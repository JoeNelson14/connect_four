# frozen_string_literal: true

require './lib/color_text'

module CreateBoard
  using ColorStrings

  def build_board
    puts board_ui = "
    #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}

    #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}

    #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}

    #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}

    #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}

    #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}  #{@circle.fg_color(:white)}
     1  2  3  4  5  6  7
    "
  end

  def display_board(board)
    board.reverse_each do |row|
      row.each do |spot|
        print "#{spot} "
      end
      print "\n"
    end
  end
end
