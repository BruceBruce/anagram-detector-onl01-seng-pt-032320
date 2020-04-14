def Anagram
  
  attr_accessor :anagram 
  
  def initialize(anagram)
    @anagram = anagram
  end
  
  def match(word_array)
    word_array.select do |word|
      word.split("").sort == @word.split("").sort
    end
  end
end

listen = Anagram.new("listen")
listen.match(%w(enlists google inlets inlest banana))