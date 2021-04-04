class Game
  @@player1_score = 0
  @@player2_score = 0
  @@positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
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
    @@positions.each_index do |i|
      if i + 1 % 3 != 1
        return true if @@positions.at(i) == @@positions.at(i+1) && @@positions.at(i+1) == @@positions.at(i+2)
      elsif i + 1 < 4
        return true if @@positions.at(i) == @@positions.at(i+3) && @@positions.at(i+3) == @@positions.at(i+6)
      end
    end
    return true if @@positions.at(0) == @@positions.at(4) && @@positions.at(4) == @@positions.at(8)
    return true if @@positions.at(2) == @@positions.at(4) && @@positions.at(4) == @@positions.at(6)

    false
  end

  def show_display
    puts " #{@@positions[0]} | #{@@positions[1]} | #{@@positions[2]} "
    puts '-----------'
    puts " #{@@positions[3]} | #{@@positions[4]} | #{@@positions[5]} "
    puts '-----------'
    puts " #{@@positions[6]} | #{@@positions[7]} | #{@@positions[8]} "
  end
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
