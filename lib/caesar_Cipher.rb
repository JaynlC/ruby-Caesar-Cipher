def ceaser_cipher(string, shift)
    string_array = []
    for i in 0..(string.length-1)
        string_array.push(string[i].downcase)
    end
    
    ascii_ordinal = string_array.map do |letter| 
        if letter.ord < 97 || letter.ord > 122
            letter.ord
        elsif (letter.ord + shift < 97) || (letter.ord + shift > 122) 
                letter = 97 + ((letter.ord + shift - 97) % 26)
                p letter
        else letter.ord + shift
        end
    end   

    p ascii_ordinal
    ascii_char = ascii_ordinal.map {|number| number.chr }
    
    return ascii_char.join("")
end    

ceaser_cipher("Abc xyz", -30)
ceaser_cipher("What a string!", 5)