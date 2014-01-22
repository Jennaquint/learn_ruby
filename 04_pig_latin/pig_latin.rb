def translate(string)

  string_array = string.split(//)
  
  vowels = %w(a e i o u)
  consonants = %w(b c d f g h i j k l m n p q r s t v w x y z)

  if vowels.include?(string_array[0])
    string_array[0..string_array.length].join + "ay"
  elsif consonants.include?(string_array[0]) && consonants.include?(string_array[1])
    string_array[2..string_array.length].join + string_array[0] + string_array[1] + "ay"
  else
    string_array[1..string_array.length].join + string_array[0] + "ay"
  end 
  
end



