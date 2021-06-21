class Player
  attr_accessor :lives , :name
  def initialize(name)
    @name = name
    @lives = 3

  end

  def lose_life
    @lives -= 1
  end

  def score
    @lives
  end
  
end


p1 = Player.new('Player 1')

