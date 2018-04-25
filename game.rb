
class Game

    def initialize()
        @player1 = Player.new('Pikachu')
        @player2 = Player.new('Bulbasaur')
        @current_player = @player1
    end

    def play_game
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
        question = Question.new
        question.ask_question (@current_player.name)
        user_answer = $stdin.gets.chomp
        if question.verify_answer (user_answer)
            puts "Yay #{@current_player.name}! You are such a genius. \n "
        else
            puts "Seriously? No. You lose a life \n "
            @current_player.lose_a_life
        end
        new_turn
    end

    def new_turn
        (@current_player == @player1) ? @current_player = @player2 : @current_player = @player1
        puts "----- NEW TURN -----"
        start_or_end_game
    end

    def start_or_end_game
        unless @player1.Is_dead? || @player2.Is_dead?
            play_game
        else
            puts "Well you lost."
            puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3! \n "
            puts "<--- GAME OVER --->"
        end
    end
end