class ConversationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def inbox?
    true # change later
  end

  def show?
    true # change later
  end
end
