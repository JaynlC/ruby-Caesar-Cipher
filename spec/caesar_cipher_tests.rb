require "./lib/caesar_Cipher.rb"

describe "#caesar_cipher" do
  it "for given string only, returns shifted string" do
    expect(caesar_cipher("abc", 2)).to eql("cde")
  end

  it "is not case sensitive" do
    expect(caesar_cipher("AbC", 2)).to eql("cde")
  end

  it "able to return special characters correctly" do
    expect(caesar_cipher("a!b!c!d$%", 1)).to eql("b!c!d!e$%")
  end

  it "can wrap from z to a" do
    expect(caesar_cipher("xyz", 3)).to eql("abc")
  end
end