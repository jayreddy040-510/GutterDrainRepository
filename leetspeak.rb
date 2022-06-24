def leetspeak(str)
  
    str.gsub!(/[e]/, "3")
    str.gsub!(/[o]/, "0")
    str.gsub!(/[l]/, "1")
    str.gsub!(/[t]/, "7")
    str.gsub!(/[n]/, "|\\|")
    str.gsub!(/[m]/, "|\\/|")
    str.gsub!(/[a]/, "4")
    str.gsub!(/[h]/, "|-|")
    
    str
  
    
  end
  
  print leetspeak("what's up dude, nm you straight chillin like a villain u know how we do yeah that shits dope mmmmmm")