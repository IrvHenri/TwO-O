class Game
  def initialize
  @player_1 = Player.new('Player 1')
  @player_2 = Player.new('Player 2')
  @current_player = @player_1
  end

  def start_game
  
      while @player_1.score != 0 || @player_2.score != 0
        generator = Question.new(@current_player.name)
        generator.generate_question
        print '> '
        input = gets.chomp.to_i
        if input == generator.get_answer
          puts "#{@current_player.name}: YES! You are correct!"
          puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
          puts "----- NEW TURN -----"
          
        else
          puts "#{@current_player.name}: Seriously? No!"
          @current_player.lose_life
          puts "P1: #{@player_1.score}/3 vs P2: #{@player_2.score}/3"
          puts "----- NEW TURN -----"
        end
    
        if @current_player == @player_1
          @current_player = @player_2
        elsif @current_player == @player_2
          @current_player = @player_1
        end
        if @player_1.score == 0 
          puts "#{@player_2.name} wins with a score of #{@player_2.score}/3"
          puts "----- GAME OVER -----"
          puts "Goodbye!"
          break
        elsif @player_2.score == 0
          puts "#{@player_1.name} wins with a score of #{@player_1.score}/3"
          puts "----- GAME OVER -----"
          puts "Goodbye!"
          break
      end
      end
  end
end