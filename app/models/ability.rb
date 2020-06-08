class Ability
    include cancan::Ability

    def def initialize(user)
        can :read, :all
    end

end