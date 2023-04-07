class FloorPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    user.admin? || record.building.user == user
  end

  def new?
    true
  end

  def create?
    true
  end

  def edit?
    user.admin? || record.building.user == user
  end

  def update?
    user.admin? || record.building.user == user
  end

  def destroy?
    user.admin? || record.building.user == user
  end
end
