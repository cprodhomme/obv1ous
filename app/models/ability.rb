class Ability
	include CanCan::Ability

	def initialize(user)
		current_user ||= User.new # guest user (not logged in)
		#if user.role? :admin  
		if current_user.admin?
		  	can :manage, :all
		else
			can :manage, :all
			#can [:read], [welcome, gallery, team]
		end
	end
end