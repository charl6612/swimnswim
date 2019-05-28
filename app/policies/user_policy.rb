class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def dashboard?
    true
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end
end