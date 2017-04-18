require('rspec')
require('pry')
require('numbers_to_words')

describe('Fixnum#convert') do

  it("will convert number one to text string one") do
    expect((1).convert()).to(eq("one"))
  end

  it("will convert number one to text string one") do
    expect((3).convert()).to(eq("three"))
  end

  it("will convert number one to text string one") do
    expect((13).convert()).to(eq("thirteen"))
  end

end
