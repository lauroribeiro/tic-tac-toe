class Game
  WINNING_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]].freeze
  @@player1_score = 0
  @@player2_score = 0
  @@positions = [0, 1, 2, 3, 4, 5, 6, 7, 8]
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
    WIN_COMBINATIONS.each do |comb|
      return true if @@positions[comb[0]] == @@positions[comb[1]] && @@positions[comb[1]] == @@positions[comb[2]]
    end
    false
  end

  def show_display
    puts " #{@@positions[0]} | #{@@positions[1]} | #{@@positions[2]} "
    puts '-----------'
    puts " #{@@positions[3]} | #{@@positions[4]} | #{@@positions[5]} "
    puts '-----------'
    puts " #{@@positions[6]} | #{@@positions[7]} | #{@@positions[8]} "
  end

  def ask_position; end
end

class Player
  attr_reader :name, :symbol

  def initialize(name)
    @name = name
    @symbol = name[0].capitalize
  end
end

game = Game.new(Player.new('lauro'), Player.new('duda'))
game.show_display
puts game.check_win
