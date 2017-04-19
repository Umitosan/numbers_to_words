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
      if (len == 1)
        final_words.push(first_nine[user_input_array[0].to_i])
        user_input_array.shift()
      elsif (len == 2)
        if (user_input_array[0] == "1")
          final_words.push(tens[user_input_array[1].to_i])
          2.times { user_input_array.shift() }
        else
          final_words.push(twenties[user_input_array[0].to_i])
          user_input_array.shift()
        end
      elsif (len == 3)
        final_words.push(first_nine[user_input_array[0].to_i])
        final_words.push(large_nums["h"])
        user_input_array.shift()
      else
        "nope"
      end
    }


    while (user_input_array.length != 0) do
      place = user_input_array.length # quick shortcut variable
      nine_lookup = first_nine[user_input_array[0].to_i] #shortcut to grab first 9 hash lookup

      if (place < 4)
        three_dig.call(place)
      elsif ((place < 7) && (place >= 4))
        final_words.push(nine_lookup)
        final_words.push(large_nums["th"])
        user_input_array.shift()
      elsif ((place < 10) && (place >= 7))
        final_words.push(nine_lookup)
        final_words.push(large_nums["m"])
        user_input_array.shift()
      elsif ((place < 13) && (place >= 10))
        final_words.push(nine_lookup)
        final_words.push(large_nums["b"])
        user_input_array.shift()
      elsif (place == 13)
          final_words.push(nine_lookup)
          final_words.push(large_nums["tr"])
          user_input_array.shift()
      else
        "nothing"
      end

      # if (place == 13)
      #   final_words.push(first_nine[user_input_array[0].to_i])
      #   final_words.push(large_nums["tr"])
      #   user_input_array.shift()
      # elsif ((place < 13) && (place >= 10))
      #   final_words.push(large_nums["b"])
      # elsif ((place < 10) && (place >= 7))
      #   final_words.push(large_nums["m"])
      # elsif ((place < 7) && (place >= 4))
      #   final_words.push(large_nums["th"])
      # elsif (place == 3)
      #   final_words.push(first_nine[user_input_array[0].to_i])
      #   final_words.push(large_nums["h"])
      # elsif (place == 2)
      #   if (user_input_array[0] == "1")
      #     final_words.push(tens[user_input_array[1].to_i])
      #     2.times { user_input_array.shift() }
      #   else
      #     final_words.push(twenties[user_input_array[0].to_i])
      #     user_input_array.shift()
      #   end
      # elsif (place == 1)
      #   final_words.push(first_nine[user_input_array[0].to_i])
      #   user_input_array.shift()
      # else
      #   "nothing"
      # end

      # if (user_input_array.length != 0)
      #   user_input_array.shift()
      # end

      # handle for zeros in a number like 10000000 after poping the 1 off
      while (user_input_array[0] == "0") do
        user_input_array.shift()
      end

    end

    # if ((user_input_array[0] == "1") && (user_input_array.length == 1))
    #   final_words.push("one")

    final_words.join(" ")
  end
end
