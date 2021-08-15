class TicTacToe
  WINNING_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]].freeze
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1_score = 0
    @player2_score = 0
    @player1_turn = true
    @positions = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    @current_turn = 0
  end

  def play
    show_display
    ask_position until game_over || @current_turn == 9
    display_winner
  end
  
  def game_over
    WINNING_COMBINATIONS.each do |comb|
      if @positions[comb[0]] == @positions[comb[1]] && @positions[comb[1]] == @positions[comb[2]]
        return @positions[comb[0]]
      end
    end
    false
  end
  
  private


  def display_winner
    if game_over == @player1.symbol
      @player1_score += 1
      puts "#{@player1.name} WINS!!"
    elsif game_over == @player2.symbol
      @player2_score += 1
      puts "#{@player2.name} WINS!!"
    end
    puts 'DRAW!' unless game_over
  end

  def show_display
    clear_display
    puts "\n #{@positions[0]} | #{@positions[1]} | #{@positions[2]} "
    puts '-----------'
    puts " #{@positions[3]} | #{@positions[4]} | #{@positions[5]} "
    puts '-----------'
    puts " #{@positions[6]} | #{@positions[7]} | #{@positions[8]} \n\n"
  end

  def clear_display
    puts `clear`
  end

  def ask_position
    if @player1_turn
      puts "#{@player1.name}, choose your position!\n "
      return unless get_position(@player1)
    else
      puts "#{@player2.name}, choose your position!\n "
      return unless get_position(@player2)
    end
    change_turn
    show_display
  end

  def get_position(player)
    pos = gets.to_i
    return false unless valid_position? pos

    set_position(pos, player.symbol)
  end

  def set_position(pos, symbol)
    @positions[pos] = symbol
  end

  def valid_position?(pos)
    return true if @positions[pos] == pos

    puts 'Invalid position'
    false
  end

  def change_turn
    @player1_turn = !@player1_turn
    @current_turn += 1
  end
end
