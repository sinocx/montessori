class UserControllerPolicy < ApplicationPolicy
  attr_reader :user, :ctrlr

  def initialize(user, ctrlr)
    @user = user
    @ctrlr = ctrlr
  end

  def subscription?
    user.admin
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
