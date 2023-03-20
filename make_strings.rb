def merge_strings(str1, str2)
    #initialise tracking variable
    overlap = 0
    #loop from 1..min(str1, str2)
    (1..[str1.length, str2.length].min).each do |i|
      # Reverse one string and perform mutual sliding window to find overlap
      overlap = i if str1[-i..-1] == str2[0...i]
    end
    #merge results
    str1 + str2[overlap..-1]
  end
  
  #Use binding.pry
  binding.pry