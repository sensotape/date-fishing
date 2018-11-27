class NibblePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.owner != user || record.interested != user
  end

  def update?
    record.interested == user
  end

  def destroy?
    record.interested == user
  end
end
