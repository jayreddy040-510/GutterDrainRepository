class Board

    def initialize(n)
        @board = Array.new(n) {Array.new(n, '_')}
    end
    
    def valid?(position)

        x = position[0]
        y = position[1]

        if (0..(@board.size - 1)).include?(x) && (0..(@board.size - 1)).include?(y)
        
            return true
        else 
            return false
        end
    end
    
    def empty?(position)
    
        @board[position[0]][position[1]] == '_'
    
    end
    
    def place_mark(position, mark)
        
        if valid?(position) && empty?(position)
        @board[position[0]][position[1]] = mark
        else 
            raise ArgumentError.new("That's not on the board, silly!")
        end
    end
    
    def print
        @board.each do |row|
            puts row.join("  ")
        end
    end

    def win_row?(mark)
        length = @board.length
     
        @board.each_with_index do |x, i|
            if x.count(mark) == length
                return true
            end
        end

        false
    end

    def win_col?(mark)
        length = @board.length

        @board.each_with_index do |x, i|
            count = 0
            @board.each_with_index do |y, j|
                
                if @board[j][i] == mark
                    count += 1
                end
            end
                    if count == length
                        return true
                    end
                
            
        end
        return false
    end

    def win_diagonal?(mark)
    
        length = @board.length
        count = []
        count2 = []
        @board.each_with_index do |blah, i|
            count << @board[i][i]
            count2 << @board[i][length - i - 1]
            if count.tally[mark] == (length)
                return true
            elsif
                count2.tally[mark] == (length)
                return true
            end
        end
            
    
    
        false
    
    
    end

    
    def win?(mark)
        if win_row?(mark)
            true
        elsif win_col?(mark)
            true
        elsif win_diagonal?(mark)
            true
        else 
            false
        end
    end

    def empty_positions?
        @board.each_with_index do |x, i|
            @board.each_with_index do |y, j|
                if @board[i][j] == '_'
                    return true
                end
            end
        end
        false
    end
    
    
    
    
    end