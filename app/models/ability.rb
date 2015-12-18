class Ability
  include Spotlight::Ability

  def initialize(user)
    user ||= Spotlight::Engine.user_class.new
    super(user)
    can :manage, [ExhibitFilter, Award],
    spotlight_exhibit_id: user.exhibit_roles.pluck(:resource_id)
  end
end
