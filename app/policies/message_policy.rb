class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.sender == user || record.recipient == user
  end

  def index?
    create?
  end
end
