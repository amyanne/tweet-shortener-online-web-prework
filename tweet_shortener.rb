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
      if word.downcase == change
        array[index] = dictionary[change]
      end  
 end
 index += 1 
 end
 array.join(" ")
  end
  def bulk_tweet_shortener(array)
    array.each_with_index do |tweet, index|
      string = $str = array[index]
     string = word_substituter(string)
      puts string
    end
end
def selective_tweet_shortener(array)
  array.each do |tweet|
    
end