require './lib/game'

print "WELCOME TO CONNECT FOUR!\n\n"

print "Enter name of first player: "
player1_name = gets.chomp
print "Enter name of second player: "
player2_name = gets.chomp

ConnectFour.new(player1_name, player2_name).play

