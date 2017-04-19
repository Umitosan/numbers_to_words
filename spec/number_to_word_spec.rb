require('rspec')
require('pry')
require('numbers_to_words')

describe('Fixnum#convert') do

  it("will convert number one to text string one") do
    expect((1).convert()).to(eq("one"))
  end

  it("will convert number one to text string one") do
    expect((19).convert()).to(eq("nineteen"))
  end

  it("lookup place") do
    expect((100).convert()).to(eq(""))
  end


end
