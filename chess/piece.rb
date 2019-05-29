class Piece
    attr_accessor :color, :board, :pos
    def initialize(color, board, pos)
        @board, @color, @pos = board, color, position
    end
end