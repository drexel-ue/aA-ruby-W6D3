require 'byebug'
require_relative 'pieces/rook_bishop_queen'
require_relative 'pieces/pawn'
require_relative 'pieces/null_piece'
require_relative 'pieces/knight_king'


class Board

    attr_accessor :grid
    
    def initialize
        @grid = Array.new(8) { Array.new(8) }
        populate
    end

    def populate
        # debugger
        (0..7).each do |row|
            if row == 0 || row == -1
                [0,2,3,5,7].each do |col|  
                    @grid[row][col] = row == 0 ? RookBishopQueen.new(:black, self, [row, col]) : RookBishopQueen.new(:white, self, [row, col])
                end
                [1,4,6].each do |col|
                    @grid[row][col] = KnightKing.new(:black, self, [row, col])
                end
            elsif row == 1 || row == -2
                (0..7).each do |col|
                    @grid[row][col] = row == 1 ? Pawn.new(:black, self, [row, col]) : Pawn.new(:white, self, [row, col])
                end
            else
                (0..7).each do |col|
                    @grid[row][col] = NullPiece.new(self, [row, col])
                end
            end  
        end
    end

end

b = Board.new
print b.grid