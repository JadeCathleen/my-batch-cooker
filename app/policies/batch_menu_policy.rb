class BatchMenuPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user_id: user.id)
    end
  end

  def create?
    true
  end

  def show?
    record.user == user
  end

  def associate_prep_steps?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
