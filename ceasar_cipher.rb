
sentence = "What a string!"
shift = 5

#this method applies the ceasar cipher encryption to as entence by shifting each 
#letter in the string down the alphabet by the shift amount

def ceasar_cipher(phrase, shift)
  phrase.downcase!
  words = phrase.split(" ")
  words.each do |word|   #for each word in the sentence
    word.split("").each_with_index do |letter, index|   #for each letter in the word
      asciiValue = letter.ord
      if(asciiValue >= 97 && asciiValue <= 122)   #if the value is a letter and not a character or digit

        newValue = asciiValue + shift
        
        if newValue > 122       #if it goes beyond z, loop around back to a
          difference = newValue - 122
          offset = 96+difference
          letter = offset.chr
          word[index] = letter
        else
          letter = newValue.chr  
          word[index] = letter
        end
      end  
    end
  end
  puts words.join(" ")
end

puts "Original string: #{sentence} with shift of #{shift} after ceasar cipher becomes: "
ceasar_cipher(sentence, shift)