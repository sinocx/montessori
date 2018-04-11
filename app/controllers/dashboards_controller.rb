class DashboardsController < ApplicationController

  def dashboard
    @subscriptions = Subscription.all.includes(:child_no_valids, :parent_no_valids, :more_info, :second_forms)
  end

  def rendez_vous
    @subscription = Subscription.find(params[:id])
    @subscription.status = 1
    @subscription.save

    redirect_to dashboard_path
  end

  def etape_1_to_2
    ChildNoValid.where(subscription_id: @subscription)
    @subscription = Subscription.find(params[:id])
    @subscription.parent_no_valids.each do|parent_no_valid|
      SubscriptionMailer.etape_1_2(parent_no_valid, @subscription, @child_no_valids).deliver_now
    end
    @subscription.update(status: 2)

    redirect_to dashboard_path
  end

  def etape_2_to_3
    @subscription = Subscription.find(params[:id])
    @subscription.parent_no_valids.each do|parent_no_valid|
      SubscriptionMailer.etape_1_2(parent_no_valid, @subscription, @child_no_valids).deliver_now
    end
    @subscription.update(status: 3)

    redirect_to dashboard_path
  end

  def validate_etape_3
    @subscription = Subscription.find(params[:id])
    @subscription.update(status: 3)
    @subscription.parent_no_valids.each do|parent_no_valid|
      SubscriptionMailer.etape_1_2(parent_no_valid, @subscription, @child_no_valids).deliver_now
    end
    @subscription.destroy

    redirect_to dashboard_path
  end

end
