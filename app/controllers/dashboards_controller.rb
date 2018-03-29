class DashboardsController < ApplicationController

  def dashboard
    @subscriptions = Subscription.all
  end

  def first_parent_of_the_subscription
    @subscription =Subscription.find(params[:id])
    @first_parents = @subscription.parent_no_valids.first
  end

  def second_parent_of_the_subscription
    @subscription = Subscription.find(params[:id])
    @second_parent = @subscription.parent_no_valids.last
  end

  def rendez_vous
    @subscription = Subscription.find(params[:id])
    @subscription.status = 1
    @subscription.save

    redirect_to dashboard_path
  end

  def etape_1_to_2
    @subscription = Subscription.find(params[:id])
    if first_parent_of_the_subscription == second_parent_of_the_subscription
      SubscriptionMailer.etape_1_2(first_parent_of_the_subscription, @subscription).deliver_now
    else
      SubscriptionMailer.etape_1_2(first_parent_of_the_subscription, @subscription).deliver_now
      SubscriptionMailer.etape_1_2(second_parent_of_the_subscription, @subscription).deliver_now
    end
    @subscription.update(status: 2)

    redirect_to dashboard_path
  end

  def etape_2_to_3
    @subscription = Subscription.find(params[:id])
    @subscription.update(status: 3)
    SubscriptionMailer.etape_2_3(first_parent_of_the_subscription, @subscription).deliver_now
    SubscriptionMailer.etape_2_3(second_parent_of_the_subscription, @subscription).deliver_now

    redirect_to dashboard_path
  end

  def validate_etape_3
    @subscription = Subscription.find(params[:id])
    @subscription.update(status: 3)
    SubscriptionMailer.etape_3(first_parent_of_the_subscription).deliver_now
    SubscriptionMailer.etape_3(last_parent_of_the_subscription).deliver_now
    @subscription.destroy
    redirect_to dashboard_path
  end

  private


end
