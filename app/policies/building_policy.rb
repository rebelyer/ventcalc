class BuildingPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end
  end

  def new?
    true
  end

  def create?
    true
  end

  def edit?
    user.admin? || record.user == user
  end

  def update?
    user.admin? || record.user == user
  end

  def show?
    user.admin? || record.user == user
  end

  def destroy?
    user.admin? || record.user == user
  end
end
