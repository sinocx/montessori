class SubscriptionPolicy < ApplicationPolicy
  def show?
    user.admin
  end

  def create?
    true
  end

  def new?
    true
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
