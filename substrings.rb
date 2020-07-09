# create method that takes two parameters
# create an empty hash to store matches
# iterate over each word in the index to see if it matches the keyword
# iterate through each keyword on each word in index
# if match is found, add 1 to its key in the hash


def substrings(keywords, dictionary)
    keywords = keywords.downcase.split(" ")
    matches = Hash.new(0)
    dictionary.each do |word|
        keywords.each do |keyword|
          if keyword.include?(word)
            matches[word] += 1
          end
        end
    end
    puts matches
end
