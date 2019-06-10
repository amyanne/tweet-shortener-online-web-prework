require "pry"
def dictionary
  shorten = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b",
  "you" => "u", "at" => "@", "and" => "&"}
end
def word_substituter(string)
 array = string.split(" ")
 shorten = dictionary.keys
 array.each_with_index do |word, index|
    shorten.each do |change|
      if word == change
      array[index] = dictionary[word]
      end  
      index += 1
 end
 end
 array.join(" ")
  end