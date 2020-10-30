def substrings (string, dictionary)
    lower_string = string.downcase.split(" ")
    word_table = lower_string.reduce(Hash.new(0)) do |result, word|
        dictionary.each do |dict_word|
            if word.include? dict_word
                result[dict_word] += 1
            end
        end
        result
    end
    p word_table
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)