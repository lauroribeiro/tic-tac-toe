class Game
  @@player1_score = 0
  @@player2_score = 0
  @@positions = [1,2,3,4,5,6,7,8,9]
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def greetings
    "Sejam bem-vindos, #{@player1.name} e #{@player2.name}.
Vocês serão representados por #{@player1.symbol} e #{@player2.symbol},
respectivamente."
  end

  def check_win
    
  end

  def show_display
    puts " #{@@positions[0]} | #{@@positions[1]} | #{@@positions[2]} "
    puts separator = '-----------'
    puts " #{@@positions[3]} | #{@@positions[4]} | #{@@positions[5]} "
    puts separator
    puts " #{@@positions[6]} | #{@@positions[7]} | #{@@positions[8]} "
  end
end

class Player
  attr_accessor :name, :symbol
  def initialize(name)
    @name = name
    @symbol = name[0].capitalize
  end
end

game = Game.new(Player.new('lauro'), Player.new('duda'))
game.scaffold
