require 'singleton'
require_relative 'piece'
    class NullPiece < Piece
        def initialize(board, position)
            @board, @position = board, position
        end

    end