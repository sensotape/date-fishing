class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record == user
  end

  def update?
    record == user
  end

  def destroy?
    record == user
  end

  def inbox?
    true
  end

  def permitted_attributes
    [:photos, :title, :category, :location, :description, :date]
  end
end
