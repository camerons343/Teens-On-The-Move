class Ability
  include CanCan::Ability

  def initialize(user = current_user)
    user ||= User.new #Guest user
    if user.role? :admin
      can :manage, :all
    else
      can :read, :all
    end
  end
end