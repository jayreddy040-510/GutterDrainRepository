class HumanPlayer
attr_reader :mark

    def initialize(mark_value)
        @mark = mark_value
    end

    def get_position(legal_positions)
        # begin
        print "\n Enter your position.\n Enter one dimension of your position at a time.\n Your mark is: #{@mark}"
        final = []
        puts
        puts
        row = gets.chomp
        final << row
        col = gets.chomp
        final << col

        final.map! {|x| x.to_i}

        # if !legal_positions.include?(final)
            
            raise ArgumentError.new if !legal_positions.include?(final)
            rescue ArgumentError
                puts
                puts "That's not a legal position! Try again."
                    retry
               
            # end
            
       

        if final.length < 2
         raise ArgumentError.new "you shoulda listened...jk lol"
        elsif final.join("").match(/[a-zA-Z]/)
            raise ArgumentError.new "you shoulda listened...jk lol"
        elsif final.count(" ") > 1
            raise ArgumentError.new "you shoulda listened...jk lol"
            
        end
        return final
    end


end