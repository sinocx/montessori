class SubscriptionsController < ApplicationController
 def new
    @subscription = Subscription.new()
    @subscription.status = 0
  end

  def create
     @subscription = Subscription.create()
     redirect_to  new_subscription_child_no_valid_path(@subscription)
  end

  def update

  end
end
