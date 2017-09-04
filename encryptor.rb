#http://tutorials.jumpstartlab.com/projects/encryptor.html
class Encryptor
    
<<<<<<< HEAD
     def cipher(rotation)
      characters = (' '..'z').to_a
      rotated_characters = characters.rotate(rotation)
      Hash[characters.zip(rotated_characters)]
    end
    
=======
    def cipher(rotation)
        characters = (''..'z').to_a
        rotated_charachters = characters.rotate(rotation)
        Hash(characters.zip(rotated_charachters))
    end
  
>>>>>>> 8c4750a3b1ea31c737b1890df438bec18af9efb5
    def encrypt_letter(letter)
      rotation = 13
      cipher_for_rotation = cipher(rotation)
      cipher_for_rotation[letter]
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



<<<<<<< HEAD

# Define the amount to rotate
# Create an array of our list of characters.
# Create a second array that is a list of characters rotated by the amount to rotate.
# Create a Hash with the first list as the keys and the second list as the values.
=======
# Define the amount to rotate
# Create an array of our list of characters.
# Create a second array that is a list of characters rotated by the amount to rotate.
# Create a Hash with the first list as the keys and the second list as the values.
>>>>>>> 8c4750a3b1ea31c737b1890df438bec18af9efb5
