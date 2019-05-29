class Piece
    attr_accessor :color, :board, :position
    def initialize(color, board, position)
        @board, @color, @position = board, color, position
    end
end