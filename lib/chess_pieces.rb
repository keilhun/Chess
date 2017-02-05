module GamePieces
  require "matrix"

  class Board
    def initialize
      @num_rows = 8
      @num_cols = 8
      @game_board = Matrix.build(@num_rows, @num_cols) {Cell.new}
    end
  end

  class Cell
    def initialize
      @row_pos = nil
      @col_pos = nil
      @chess_piece = nil
    end
  end

  class ChessPiece
    def initialize(color=nil)
      @valid_moves = []
      @current_row = -1
      @current_col = -1
      @max_spaces = 0
      @symbol = nil
      @color = nil
    end
  end

  class King < ChessPiece
    def initialize(color)
      super
      @valid_moves = [[0,1], [1,1], [1,0], [1,-1], [0,-1], [-1,-1], [-1,0], [-1,1]]
      @max_spaces = 1
      @symbol = "9812"
      @color = color
    end
  end

  class Queen < ChessPiece
    def initialize(color)
      super
      @valid_moves = [[0,1], [1,1], [1,0], [1,-1], [0,-1], [-1,-1], [-1,0], [-1,1]]
      @max_spaces = 8
      @symbol = "9812"
      @color = color
    end
  end

  class Rook < ChessPiece
    def initialize(color)
      super
      @valid_moves = [[0,1], nil, [1,0], nil, [0,-1], nil, [-1,0], nil]
      @max_spaces = 8
      @symbol = "9812"
      @color = color
    end
  end

  class Knight < ChessPiece
    def initialize(color)
      super
      @valid_moves = [[1,2], [2,1], [2,-1], [1,-2], [-1,-2], [-2,-1], [-2,1], [-1,2]]
      @max_spaces = 1
      @symbol = "9812"
      @color = color
    end
  end

  class Bishop < ChessPiece
    def initialize(color)
      super
      @valid_moves = [nil, [1,1], nil,[1,-1], nil, [-1,-1], nil,  [-1,1]]
      @max_spaces = 8
      @symbol = "9812"
      @color = color
    end
  end

  class Pawn < ChessPiece
    def initialize(color)
      super
      @valid_moves = [nil, nil, [0,1], nil, nil, nil, nil, nil]
      @max_spaces = 1
      @symbol = "9812"
      @color = color
      @first_move = true
    end
  end
end