require 'pry'

def translate(string_array)
  first_letter = string_array.shift

  if !is_vowel?(string_array)
    second_letter = string_array.shift
  elsif !is_vowel?(string_array)
    third_letter = string_array
  end

  if second_letter == nil && third_letter == nil
    string_array << first_letter
    string = string_array.join
    result = string + 'ay'
  elsif second_letter != nil && third_letter == nil
    string_array << first_letter
    string_array << second_letter
    string = string_array.join
    result = string +'ay'
  elsif second_letter != nil && third_letter != nil
    string_array << first_letter
    string_array << second_letter
    string_array << third_letter
    string = string_array.join
    result = string + 'ay'
  end

  return result

end

def is_vowel?(string)
    if (string.first == 'a' || string.first == 'e' ||
        string.first == 'i' || string.first == 'o' ||
        string.first == 'u')
      return true
    else
      return false
    end
end

def translate_vowel(string_array)
  string = string_array.join
  result = string + "way"
end

def arrayify(input)
  result = input.split(//)
end

#-------------------------main---------------------#
puts "Welcome to the pig latin translator"
puts

print "Please enter a word to translate: "
input = gets.chomp
puts

string_array = arrayify(input)

  if is_vowel?(string_array)
    result = translate_vowel(string_array)
    puts "Pig Latin Translation is ===> #{result}"
  else
    result = translate(string_array)
    puts "Pig Latin Translation is ===> #{result}"
  end
