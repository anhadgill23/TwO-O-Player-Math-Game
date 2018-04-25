class Player
    attr_accessor :is_dead, :lives, :name

    def initialize(name)
        @name = name
        @lives = 3
    end

    def Is_dead? ()
        @lives < 1
    end

    def lose_a_life ()
        @lives -= 1
    end

end
