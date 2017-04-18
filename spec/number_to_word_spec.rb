require('rspec')
require('pry')
require('numbers_to_words')

describe('Fixnum#number_to_word') do

  it("will convert number one to text string one") do
    expect("1").to(eq("one"))
  end

end
