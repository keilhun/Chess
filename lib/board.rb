class Board

  require_relative "cell"
  require 'pp'
  require 'awesome_print'

  def initialize ()
    @notation_x = [:a, :b, :c, :d, :e, :f, :g]
    @notation_y = [1,2,3,4,5,6,7,8]
    @board = Hash.new()
    @notation_x.each do |x|
      @board[x] = Hash.new()
      (1..8).each do |y|
        @board[x][y] = Cell.new()
      end
    end
    ap (@board)
    setup_board()

  end

  def setup_board ()

  end
end

x = Board.new