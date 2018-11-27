class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    record.sender == user || record.recipient == user
  end

  def create?
    record.sender == user || record.recipient == user
  end
end
