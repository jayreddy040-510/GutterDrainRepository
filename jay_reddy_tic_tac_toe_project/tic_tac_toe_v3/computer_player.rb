class ComputerPlayer

    attr_reader :mark

    def initialize(mark_value)
        @mark = mark_value
    end

    def get_position(legal_positions)
        random_position = legal_positions.sample
        puts """ The Computer's mark is #{mark} and it chose #{random_position}"""
        return random_position
    end


        # print "Enter your position. Enter one dimension of your position at a time. Your mark is: #{@mark}"
        # final = []
        # row = gets.chomp
        # final << row
        # col = gets.chomp
        # final << col

        # if final.length < 2
        #  raise ArgumentError.new "you shoulda listened...jk lol"
        # elsif
        #     final.join("").match(/[a-zA-Z]/)
        #     raise ArgumentError.new "you shoulda listened...jk lol"
        # elsif
        #     final.count(" ") > 1
        #     raise ArgumentError.new "you shoulda listened...jk lol"
            
        # end
        # return final.map! {|x| x.to_i}
   


end