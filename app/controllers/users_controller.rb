class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_user_admin
  def index

  end
  def subscriptions_dashboard
    @subscriptions = Subscription.all.includes(:child_no_valids, :parent_no_valids)
  end

  def subscription_show
    @subscription = Subscription.find(params[:id])
  end


  def rendez_vous
    @subscription = Subscription.find(params[:id])
    @subscription.status = 1
    @subscription.save

    redirect_to subscription_admin_path
  end

  def etape_1_to_2
    @subscription = Subscription.find(params[:id])
    @child_no_valids = ChildNoValid.where(subscription_id: @subscription)
    @subscription.parent_no_valids.each do|parent_no_valid|
      SubscriptionMailer.etape_1_2(parent_no_valid, @subscription, @child_no_valids).deliver_now
    end
    @subscription.update(status: 2)

    redirect_to subscription_admin_path
  end

  def validate_etape_3
    @subscription = Subscription.find(params[:id])
    @subscription.update(status: 3)
    @subscription.parent_no_valids.each do|parent_no_valid|
      SubscriptionMailer.etape_1_2(parent_no_valid, @subscription, @child_no_valids).deliver_now
    end
    @subscription.destroy

    redirect_to subscription_admin_path
  end
  private

  def authorize_user_admin
    if current_user.admin == false
      redirect_to root_path
    end
  end

end