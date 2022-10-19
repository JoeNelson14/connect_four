# frozen_string_literal: true

require './lib/board'
require './lib/color_text'

class ConnectFour
  include CreateBoard
  using ColorStrings
  def initialize(player1_name, player2_name)
    @player1_name = player1_name
    @player2_name = player2_name
    @current_color = :blue
    @circle = "\u2B24".fg_color(:blue)
    @board = [
      ['1', '2', '3', '4', '5', '6', '7'],
      ['1', '2', '3', '4', '5', '6', '7'],
      ['1', '2', '3', '4', '5', '6', '7'],
      ['1', '2', '3', '4', '5', '6', '7'],
      ['1', '2', '3', '4', '5', '6', '7'],
      ['1', '2', '3', '4', '5', '6', '7']
    ]
  end

  # starts game
  def play
    solved = false
    current_player = @player1_name
    until solved
      display_board(@board)
      user_input = get_user_input
      solved = four_in_row?
      current_player = switch_players(current_player)
    end
  end

  # gets users input for what spot they want to go in
  def get_user_input
    p "Enter a column to place your piece: "
    user_input = gets.chomp
    update_board(validate_input(user_input).to_i)
  end

  # checks after each round if any of players have '4' in a row
  def four_in_row?

  end

  def update_board(user_input)
    @board.map! do |row|
      if row[user_input - 1] != "\e[38;2;255;0;0m\u2B24\e[0m" && row[user_input - 1] != "\e[38;2;0;0;255m\u2B24\e[0m"
        row[user_input - 1] = @circle
        break
      end
      row
    end
  end

  def validate_input(user_input)
    user_input.to_i.between?(1,7) ? user_input : get_user_input.to_i
  end

  # swtiches player turns
  def switch_players(current_player)
    if current_player == @player1_name
      @circle = "\u2B24".fg_color(:red)
      @player2_name
    else
      @circle = "\u2B24".fg_color(:blue)
      @player1_name
    end
  end
  
end
