require('rspec')
require('pry')
require('numbers_to_words')

describe('Fixnum#convert') do

  # it("will convert number one to text string one") do
  #   expect((1).convert()).to(eq("one"))
  # end
  #
  # it("will convert number one to text string one") do
  #   expect((19).convert()).to(eq("nineteen"))
  # end
  #
  # it("lookup place") do
  #   expect((100).convert()).to(eq("one hundred"))
  # end
  #
  # it("lookup place") do
  #   expect((1001).convert()).to(eq("one thousand one"))
  # end
  #
  # it("lookup place") do
  #   expect((10000).convert()).to(eq("ten thousand"))
  # end
  #
  # it("lookup place") do
  #   expect((100000).convert()).to(eq("one hundred thousand"))
  # end
  #
  # it("lookup place") do
  #   expect((1000000).convert()).to(eq("one million"))
  # end
  #
  # it("lookup place") do
  #   expect((10010000).convert()).to(eq("ten million ten thousand"))
  # end
  #
  # it("lookup place") do
  #   expect((1327543873849).convert()).to(eq("one trillion three hundred twenty seven billion five hundred forty three million eight hundred seventy three thousand eight hundred forty nine"))
  # end

  # it("lookup place") do
  #   expect((1321).convert()).to(eq(""))
  # end

  # it("lookup place") do
  #   expect((21).convert()).to(eq(""))
  # end

  
  it("lookup place") do
    expect((320000).convert()).to(eq("three hundred twenty thousand"))
  end


end
