
require_relative "./board.rb"
require_relative "./human_player.rb"
require_relative "./computer_player.rb"

class Game
    attr_reader :players, :current_player
    def initialize(n, option)
        hash = Hash.new(0)
        option.each do |player, value|
        if value == false
            player = HumanPlayer.new(player)
            hash[player] = value
        else
            player = ComputerPlayer.new(player)
            hash[player] = value
        end
    end

        # @players.map!.with_index do |player, i|
        #      player = HumanPlayer.new(player_marks[i])
        # end
        # @player_1 = HumanPlayer.new(player_1_mark)
        # @player_2 = HumanPlayer.new(player_2_mark)
        @players = hash.keys
        @current_player = @players[0]
        @board = Board.new(n)
    
    
    end
    
   
    
    
    def current_player_mark
        @current_player.mark
    end



    def switch_turn
        @current_player = @players[0]
           @players.rotate!
           @current_player = @players[0]
    end

    def play
        while @board.empty_positions?
            puts
            @board.print
            puts
            position = @current_player.get_position(@board.legal_positions)
            mark = @current_player.mark
            @board.place_mark(position, mark)
            if @board.win?(mark)
                return print "#{@current_player.mark} wins!"
            else
                switch_turn
            end
        end
        puts
        puts "Draw!"
        puts

    end







end