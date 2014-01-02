class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user

    if user.role? :administrator
     #can :manage, :all
     can :access, :Users
   can :manage, :Users
  # can :index, UserlistController
   # elsif user.role? :operator
    #  can :manage, Post
    else
      can :read, :all
    end
  end
end