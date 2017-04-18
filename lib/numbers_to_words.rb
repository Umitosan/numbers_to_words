class Fixnum
  define_method(:convert) do
    start_num = self
    user_input_array = self.to_s().split("")
    # returns ["1","2","3"...]
    final_words = []
    first_twenty = Hash.new()
    first_twenty = {
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
    }

    if ((user_input_array[0] == "1") && (user_input_array.length == 1))
      final_words.push("one")
    else
      final_words.push(first_twenty[start_num])
    end

    final_words[0]
  end
end
