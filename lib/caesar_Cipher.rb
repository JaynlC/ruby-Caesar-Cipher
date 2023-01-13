def caesar_cipher(string, shift)
    string_array = []
    for i in 0..(string.length-1)
        string_array.push(string[i].downcase)
    end
    
    ascii_ordinal = string_array.map do |letter| 
        if letter.ord < 97 || letter.ord > 122
            letter.ord
        elsif (letter.ord + shift < 97) || (letter.ord + shift > 122) 
                letter = 97 + ((letter.ord + shift - 97) % 26)
        else letter.ord + shift
        end
    end   
    ascii_char = ascii_ordinal.map {|number| number.chr }
    ascii_char.join("")
end    