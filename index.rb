
def cript(string = gets.chomp, shift = gets.chomp )
    shift = shift.to_i   
    string = string.split("")   ## return an array version of the input string              
    p cripted(string, shift).join("")

end

def cripted (string, shift) ##takes the input from function and return for each character itself trasled by the shift if it is a letter 
    alphabet = ("a".."z").to_a ##an array with 2 versions of the alphabets one uppercase and one lowercase 
    alphabet_capitalized = alphabet.join("").upcase
    cripting = string.map do |letter|  ##takes every letter inside the array 
        if alphabet.include?(letter) ## if it is included inside the lowercase 
            index = alphabet.index(letter) + shift ##gives a value (index) shifted by "shift-value"          
            alphabet[check_index(index)]##return a letter from the alphabet's array using the shifted index value 
            ##ex: "z" shifted by "2" return b 
        elsif alphabet_capitalized.include?(letter) #ssame as above with the uppercase characters
            index = alphabet_capitalized.index(letter) + shift                     
            alphabet_capitalized[check_index(index)]
        else
            letter 
        end    
    end 
end

def check_index(index)#check if the index is a number from 0 to 26 and change it to re-roll the array 
    if index >= 26 
        index-26
   else
        index
   end     
end

cript()
