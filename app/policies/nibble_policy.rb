class NibblePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    !(record.owner == user || has_nibble)
  end

  def destroy?
    record.interested == user
  end

  def has_nibble
    user.nibbles.where(experience: record.experience).present?
  end
end
