class String
    def last_vowel
        (-(self.reverse.index(/[aeiouAEIOU]/)) - 1) + self.length
    end
end


p "girlfriend".last_vowel