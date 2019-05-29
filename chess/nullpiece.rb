require 'singleton'
require_relative 'piece'
    class NullPiece < Piece
        def initialize(color, board, position)
            super
        end

    end