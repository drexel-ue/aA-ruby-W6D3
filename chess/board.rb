require_relative 'pieces/piece'
require_relative 'pieces/null_piece'

class Board

    def self.populate(grid)
        (0..7).each do |row|
            if row < 1  
                [0,2,-3,-1].each do |col|  #[0,1,-2,-1].each do |j|
                    grid[row][col] << 
                end
                [1,-2].each do  #knight
            elsif wor < 6
            else
            end
        end
        
    end

    def initialize
        @grid = Array.new(8) {Array.new(8)}

    end
end