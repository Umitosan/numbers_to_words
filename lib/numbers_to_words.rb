class Fixnum
  define_method(:convert) do
    start_num = self
    user_input_array = self.to_s().split("")
    # returns ["1","2","3"...]
    final_words = []
    first_nine = Hash.new()
    tens = Hash.new()
    twenties = Hash.new()
    large_nums = Hash.new()

    first_nine = {
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine"
    }

    tens = {
      0 => "ten",
      1 => "eleven",
      2 => "twelve",
      3 => "thirteen",
      4 => "fourteen",
      5 => "fifteen",
      6 => "sixteen",
      7 => "seventeen",
      8 => "eighteen",
      9 => "nineteen"
    }

    twenties = {
      2 => "twenty",
      3 => "thirty",
      4 => "forty",
      5 => "fifty",
      6 => "sixty",
      7 => "seventy",
      8 => "eigthy",
      9 => "ninety"
    }

    large_nums = {
      "tr" => "trillion",
      "b" => "billion",
      "m" => "million",
      "th" => "thousand",
      "h" => "hundred"
    }


    three_dig = Proc.new { |len|

      while (len != 0) do
        if (len == 1)
          final_words.push(first_nine[user_input_array[0].to_i])
          user_input_array.shift()
          len -= 1
        elsif (len == 2)
          if (user_input_array[0] == "1")
            final_words.push(tens[user_input_array[1].to_i])
            2.times { user_input_array.shift() }
            len -= 2
          else
            final_words.push(twenties[user_input_array[0].to_i])
            user_input_array.shift()
            len -= 1
          end
        elsif (len == 3)
          final_words.push(first_nine[user_input_array[0].to_i])
          final_words.push(large_nums["h"])
          user_input_array.shift()
          len -= 1
        else
          "nope"
        end
        # if ((user_input_array[0] = "0") && (len != 0))
        #   user_input_array.shift()
        #   len -= 1
        # end
      end

    }


    while (user_input_array.length != 0) do
      place = user_input_array.length # quick shortcut variable
      nine_lookup = first_nine[user_input_array[0].to_i] #shortcut to grab first 9 hash lookup
      if (place < 4)
        three_dig.call(place)
      elsif ((place < 7) && (place >= 4))
        place2 = place - 3
        three_dig.call(place2)
        final_words.push(large_nums["th"])
      elsif ((place < 10) && (place >= 7))
        place2 = place - 6
        three_dig.call(place2)
        final_words.push(large_nums["m"])
      elsif ((place < 13) && (place >= 10))
        place2 = place - 9
        three_dig.call(place2)
        final_words.push(large_nums["b"])
      elsif (place == 13)
        place2 = place - 12
        three_dig.call(place2)
        final_words.push(large_nums["tr"])
      else
        "nothing"
      end
      # git rid of nasty hanging 0s
      while (user_input_array[0] == "0") do
        user_input_array.shift()
      end
    end


    final_words.join(" ")
  end
end
