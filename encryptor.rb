#http://tutorials.jumpstartlab.com/projects/encryptor.html

class Encryptor
    
    def cipher(rotation)
        characters = (''..'z').to_a
        rotated_charachters = characters.rotate(rotation)
        Hash(characters.zip(rotated_charachters))
    end
  
    def encrypt_letter(letter)
      lowercase_letter = letter.downcase
      cipher[lowercase_letter]
    end
    
    def decrypt_letter(letter)
        lowercase_letter = letter.downcase
        cipher.key(lowercase_letter)
    end 
  

    def encrypt(string)
        letters = string.split("")
        results = letters.collect {|letter| encrypt_letter(letter)}
        results.join
    end
    
    def decrypt(string)
        letters = string.split("")
        results = letters.collect {|letter| decrypt_letter(letter)}
        results.join
    end
    
end 



# Define the amount to rotate
# Create an array of our list of characters.
# Create a second array that is a list of characters rotated by the amount to rotate.
# Create a Hash with the first list as the keys and the second list as the values.