#write your code here
def echo msg
	return msg
end

def shout msg
	return msg.upcase
	
end

def repeat x, times=2
	return ((x+' ')*times)[0...-1]
	
end

def start_of_word word, x
 	return word[0...x]
end

def first_word msg
	msg.split(' ')[0]
end

def titleize s
	# assuming one space between each word exactly
	little_words = ['and','to','is','be', 'over', 'the']
	new_s = ''
	s.split.each do |word|
		first_letter = if little_words.include? word then word[0] else word[0].upcase end
		new_s += first_letter+word[1..-1] + ' '
	end
	return new_s[0].upcase+new_s[1...-1]
	
end