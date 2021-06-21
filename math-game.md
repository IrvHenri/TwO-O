# Class : player // how to connect with question class

@name - initalized
@lives = 3

method : remove a life.
method : out of lives?
method : score (contains: @lives)

# Class : Game

variables: @player1, @player2, @current_player (ternary?), input = gets.chomp

method: start_game loop if player.score == 0 ends (call generator question_generator.new)
generator = QuestionGenerator.new(name: player.name)
method: turn loop
method: output scores
method: check for winner

# Class : question generator

variables : @sum , @num1,@num2 input
@sum = @num1 + @num2
method: question > puts "..."  
method: answer
method: verify input == sum -> substract life if false

///

def start_game for loop generator = QuestionGenerator.new(player_name: current_player.name) generator.question input.chomp if input.chomp != generator.answer player1.score - 1 end current_player = player2 end when player1.score == 0 || player2.score == 0 end
