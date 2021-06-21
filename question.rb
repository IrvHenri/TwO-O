class Question
  def initialize (player_name)
    @player_name = player_name
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def generate_question 
    puts "#{@player_name}: What does #{@num1} + #{@num2} equal?"
  end
  def get_answer
    @answer
  end
end


