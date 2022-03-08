class DonationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.campaign.user == user
  end

  def destroy?
    owner?
  end

  private

  # def is_owner_or_admin?
  #   record.user == user || user.admin
  # end

  def owner?
    record.user == user
  end

end
