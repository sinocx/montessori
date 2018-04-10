class SecondFormPolicy < ApplicationPolicy
  def index?
    @subscription = Subscription.find(params[:subscription_id])
    @subscription.token == params[:token]
  end

  def new?
    @subscription = Subscription.find(params[:subscription_id])
    @subscription.token == params[:token]
  end
  class Scope < Scope
    def resolve
      @subscription = Subscription.find(params[:subscription_id])
      @subscription.token == params[:token]
    end
  end
end
