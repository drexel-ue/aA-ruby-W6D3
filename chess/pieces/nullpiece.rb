require 'singleton'
require_relative 'piece'
    class NullPiece < Piece
        def initialize(color, board, pos)
            super
        end

    end

    # n = NullPiece.new(:black, )