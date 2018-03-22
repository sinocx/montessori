class DashboardsController < ApplicationController

  def dashboard
    @subscriptions = Subscription.all
  end

  def etape_1_to_2
    @subscription = Subscription.find(params[:id])
    @subscription.status = 1
  end

  def etape_2_to_3
    @subscription = Subscription.find(params[:id])
    @subscription.status = 2
  end
end
