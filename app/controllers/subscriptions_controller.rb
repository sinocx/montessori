class SubscriptionsController < ApplicationController
   skip_before_action :authenticate_user!

  def new
    @subscription = Subscription.new()
  end

  def create
    @subscription = Subscription.create(status: 0)
    redirect_to  new_subscription_child_no_valid_path(@subscription)
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
  end
end
