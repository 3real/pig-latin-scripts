# count_voels function for test purposes only
# def count_vowels(input)
#   input[0].scan(/[aeouiAEIOU]/).count
# end

# function to take input, check if vowel or constanant and apply pig latin rules
def vowel_logic(args)
  if ["a", "e", "i", "o", "u"].any? { |s| args[0].include?(s) }
    args += "-way "
  else
    args += "-" + args[0] + "ay "
    args = args[1..-1]
  end
end

# code block to prompt user for input and record
print "write sentence "
string = $stdin.gets.chomp
input = string.downcase
print input
puts input


# code block for checking output
# puts vowel_logic(input)
# puts count_vowels(input)

# splits users input into an array with a new entry at every whitespace
array = input.split(" ")
array.map! {|each_word| vowel_logic(each_word)}

# code block for checking output
# puts array

# shows output
puts message = array.join
