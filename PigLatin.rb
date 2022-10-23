#!/usr/bin/env ruby

#SINGLE WORD INTO PIG LATIN
#FIRST WORD IN CONSONANT, IT MOVES TO END PLUS AY
#IF BEGINS WITH VOWEL, JUST ADD AY
#IF BEGINS WITH CONSONANT CLUSTER, WHOLE CLUSTER GOES TO END + AY


def pig_latin(word)

	word.downcase!
	vowels = ['a', 'e', 'i', 'o', 'u']
	punctuation= [',', '.', '?', '!', ':', ';']

	#convert word to array
	arr = word.split('')
	first = arr[0]
	last = arr[-1]

	#remove punctuation
	if punctuation.include?(last)
		arr.pop
	end

	#find first vowel position
	arr.each do |char|
		if vowels.include?(char)
			first = char
			break
		end
	end

	first_pos = arr.find_index(first)

	if first_pos > 0
		front = arr[0...first_pos]
		mid = arr[first_pos..-1]
	else
		front = []
		mid = arr
	end

	#return main + front + ay
	p_lat = mid.join + front.join + 'ay' 

	p_lat

end

#pig_latin('ahrens.')


def pig_sentence(sentence)
	words = sentence.split(" ")
	arr = words.map do |word|
		pig_latin(word)
	end
	puts arr.join(" ").capitalize + "."
end

#pig_latin('Dylan Ahrens.')


def pig_latin_translator
  loop do
    print "translate: "
    input = gets.chomp
    if input == 'quit'
      exit!
    else
      puts pig_sentence(input)
      puts
    end
  end
end

pig_latin_translator

