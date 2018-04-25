require 'ClassA.rb'
require 'ClassB.rb'

class ClassA
    def initialize(argument)
      @state = argument

      @player = ClassB.new('name')
      start_game
    end

    def start_game

    end
end

class ClassB
    def initialize
      @state = 3
    end

end

instance = ClassA.new