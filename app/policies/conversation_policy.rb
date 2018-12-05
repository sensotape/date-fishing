class ConversationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    record.nibble.owner == user || record.nibble.interested == user
  end
end
