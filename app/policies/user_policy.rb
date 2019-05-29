class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def dashboard_pool?
   true
  end

  def dashboard_rental?
   true
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end
end
