class HumanPlayer
attr_reader :mark

    def initialize(mark_value)
        @mark = mark_value
    end

    def get_position
        print "Enter a position as two numbers with a space between them. Enter one dimension of your position at a time. Your mark is: #{@mark}"
        final = []
        row = gets.chomp
        final << row
        col = gets.chomp
        final << col

        if final.length < 2
         raise ArgumentError.new "you shoulda listened...jk lol"
        elsif
            final.join("").match(/[a-zA-Z]/)
            raise ArgumentError.new "you shoulda listened...jk lol"
        elsif
            final.count(" ") > 1
            raise ArgumentError.new "you shoulda listened...jk lol"
            
        end
        return final.map! {|x| x.to_i}
    end


end