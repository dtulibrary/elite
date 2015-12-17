class Ability
  include Spotlight::Ability

  def initialize(user)
    super
    can :manage, [ExhibitFilter, Award],
    spotlight_exhibit_id: user.exhibit_roles.pluck(:resource_id)
  end
end
