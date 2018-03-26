class SubscriptionsController < ApplicationController
 def new
    @subscription = Subscription.new()
    @subscription.status = 0
  end

  def create
    @subscription = Subscription.create()
    @subscription.status = 0
    @subscription.save
    redirect_to  new_subscription_child_no_valid_path(@subscription)
  end
  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
  end
end
