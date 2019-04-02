# # A method to reverse the words in a sentence, in place.
# # Time complexity: O(n), where n is the length of the string
# # Space complexity: O(1)

def reverse_sentence(my_sentence)
  # raise NotImplementedError

  # string reverse
  if my_sentence == nil
    return my_sentence
  else
    i = 0
    while my_sentence[i] != nil
      i += 1
    end #while end

    for j in (0...(i / 2))
      temp = ""

      temp = my_sentence[j]
      my_sentence[j] = my_sentence[(i - 1) - j]
      my_sentence[(i - 1) - j] = temp
    end
  end

  reversed = reverse_words(my_sentence)
  return reversed
end

##NOTE:  This code did not pass the tests even though it was printing the correct output.

#   if my_sentence == nil
#     return my_sentence
#   end
#   temp = ""
#   i = my_sentence.length - 1

#   while i >= 0
#     temp.concat(my_sentence[i])
#     i -= 1
#   end
#   reversed = reverse_words(temp)
#   return reversed

def reverse_words(my_words)
  if my_words == nil
    return nil
  end
  starting_index = 0
  for i in (0...my_words.length)
    if (my_words[i] == " ")
      ending_index = i - 1
      swap(starting_index, ending_index, my_words)
      starting_index = i + 1
    end
    if (i == my_words.length - 1)
      ending_index = i
      swap(starting_index, ending_index, my_words)
      starting_index = i + 1
    end
  end
  return my_words
end

def swap(starting_index, ending_index, my_words)
  for j in (starting_index..(starting_index + (ending_index - starting_index - 1) / 2))
    temp = my_words[j]
    my_words[j] = my_words[starting_index + ending_index - j]
    my_words[starting_index + ending_index - j] = temp
  end
  return my_words
end

puts reverse_sentence("Yoda is awesome!")
