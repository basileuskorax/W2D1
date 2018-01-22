require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  attr_reader :cursor, :board

  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @board = board
  end

  def move_cursor
    until board.over?
      render
      cursor.get_input
    end
  end

  def render
    system('clear')

    puts "-" * 8
    while i <= 7
      row_string = '|'
      board.grid[i].each{|el| row_string << el.symbol.to_s + '|'}
      puts '#{row_string}'
      puts "-" * 8
      i += 1
    end

    cursor.colorize(:background => :yellow)

  end
end
