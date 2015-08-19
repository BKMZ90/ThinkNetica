=begin
Заполнить хеш гласными буквами, где значением будет являтся
порядковый номер буквы в алфавите (a - 1).
=end

letter = ("a" .. "z").to_a
number = (1..26).to_a
vowels = ["a", "e", "i", "o", "u", "y"]

all = Hash[letter.zip number]  #if Hash[letter].include(vowels) == true

h_vowels = {}
all.each {|letter, number| h_vowels[letter] = number if vowels.include?(letter)}

puts h_vowels