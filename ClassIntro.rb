

# class Jay
#     @@passion = "addressing disparity within his means".upcase 
#     attr_accessor :apartment

   
    
#     def initialize (name, height, weight, skin_color, mother, hobby, apartment)
#         @name = name
#         @height = height
#         @weight = weight
#         @skin_color = skin_color
#         @mother = mother
#         @hobby = hobby
#         @apartment = apartment
#     end

#     def name
#         @name
#     end

#     def self.career_change(arg)
#         @@passion = @@passion + " AND " + arg.upcase
#         end

#     def hobby
#         @hobby
#     end

#     def weight
#         @weight
#     end
    
#     def passion
#         @@passion
#     end

#     def lose_weight=(weight_lost)
#         @weight = @weight - weight_lost
#         return @weight
#     end


# end

# new_jay = Jay.new("codingjay", 6, 200, "dark brown", "Mala", "basketball", "516 Ellis" )




# p new_jay.name


def is_palindrome(121)
    i = 0
  if x < 0 
     return false
  end
    
        while i <= (x.to_s).length / 2
            if x[i] != x[-(i + 1)]
                return false
            end
            i += 1
        end
        return true
   
        
        
end