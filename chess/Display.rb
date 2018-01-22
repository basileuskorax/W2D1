require 'colorize'
require_relative 'board'
require_relative 'cursor'

class Display
  def initialize(board)
    @cursor_pos = Cursor.new([0,0], board)
    @board
  end

  def render
    cursor_pos.colorize(:background => :red)
  end
end
