require_relative 'game.rb'
require_relative 'player.rb'

puts "Player 1, choose your nickname:\n"
player1 = gets.chomp
puts "Player 2, choose your nickname:\n"
player2 = gets.chomp
game = Game.new(Player.new(player1), Player.new(player2))
game.play
