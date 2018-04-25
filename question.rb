class Question
    attr_accessor :num1, :num2

    def initialize ()
        @num1 = rand(1..20)
        @num2 = rand(1..20)
    end

    def ask_question (current_player)
        puts "#{current_player}: What does #{@num1} plus #{@num2} equal?"
    end

    def verify_answer (user_answer)
        user_answer == "#{@num1 + @num2}"
    end
end

# puts Testing = Questions.new