class MoodPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def destroy?
    true
  end

  def destroy_all?
    user.admin = true
  end
end

