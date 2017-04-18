class Fixnum
  define_method(:convert) do
    start_num = self
    user_input_array = self.to_s().split("")
    # returns ["1","2","3"...]
    final_words = []
    ninety_hash = Hash.new()
    large_numbers = Hash.new()

    ninety_hash = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen",
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
      20 => "twenty",
      30 => "thirty",
      40 => "forty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eigthy",
      90 => "ninety"
    }

    large_nums = {
      "tr" => "trillion",
      "b" => "billion",
      "m" => "million",
      "th" => "thousand",
      "h" => "hundred"
    }


    while (user_input_array.length != 0) do
      place = user_input_array.length

      if (place == 13)
        final_words.push(ninety_hash[user_input_array[0]])
        final_words.push(large_nums["tr"])  # CONTEXT PLACE VALUE WORD
      elsif ((place < 13) && (place >= 10))
        final_words.push(large_nums["b"])   # CONTEXT PLACE VALUE WORD
      elsif ((place < 10) && (place >= 7))
        final_words.push(large_nums["m"])   # CONTEXT PLACE VALUE WORD
      elsif ((place < 7) && (place >= 4))
        final_words.push(large_nums["th"])  # CONTEXT PLACE VALUE WORD
      elsif (place == 3)
        final_words.push(large_nums["h"])   # CONTEXT PLACE VALUE WORD
      else
        "nothin"
      end

      user_input_array.shift()
      # remove the number just finished processing
      # user_input_array.shift()
    end
# binding.pry




    # if ((user_input_array[0] == "1") && (user_input_array.length == 1))
    #   final_words.push("one")
    # else
    #   final_words.push(first_twenty[start_num])
    # end

    final_words[0]
  end
end
