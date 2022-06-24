
require_relative "./board.rb"
require_relative "./human_player.rb"

class Game
    attr_reader :player_1, :player_2, :current_player
    def initialize(player_1_mark, player_2_mark)
    
        @player_1 = HumanPlayer.new(player_1_mark)
        @player_2 = HumanPlayer.new(player_2_mark)
        @current_player = @player_1
        @board = Board.new
    
    
    end
    
    
    
    def current_player_mark(current_player)
        current_player.mark
    end



    def switch_turn
        if @current_player == @player_1
            @current_player = @player_2
        elsif @current_player == @player_2
            @current_player = @player_1
        end
    end

    def play
        while @board.empty_positions?
            @board.print
            position = @current_player.get_position
            mark = @current_player.mark
            @board.place_mark(position, mark)
            if @board.win?(mark)
                return print "#{current_player_mark(current_player)} wins!"
            else
                switch_turn
            end
        end
        puts
        @board.print
        puts
        puts "Draw!"
        puts

    end







end