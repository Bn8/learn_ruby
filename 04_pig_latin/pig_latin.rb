#write your code here

# make first letter go upwards to the top of the word
def upwards word
	return word[1..-1]+word[0]
end

def translate_single word 
	vowls="aieou"
	consonants="B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, X, Z".downcase.gsub(', ', '')
	placeholders={"sch"=>"1", "qu"=>"2"}

	consonants += placeholders.values.join

	placeholders.each do |key, value|
		word.gsub!(key.to_s,value.to_s)
	end

	count_cons = 0
	word.each_char do |char| 
		if consonants.include? char then
			count_cons+=1
		else
			break
		end
	end

	count_cons.times {word = upwards word}

	placeholders.each do |key, value|
		word.gsub!(value,key)
	end

	return word+'ay'
end

def translate sentence
	modified = sentence.split.map do |word|
		translate_single word
	end
	return modified.join(' ')
end