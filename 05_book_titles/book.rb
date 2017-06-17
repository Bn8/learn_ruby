class Book
	attr_accessor :title

	def titleize s
		# assuming one space between each word exactly
		little_words = ['and','to','is','be', 'over', 'the', 'of', 'in','a','an']
		new_s = ''
		s.split.each do |word|
			first_letter = if little_words.include? word then word[0] else word[0].upcase end
			new_s += first_letter+word[1..-1] + ' '
		end
		return new_s[0].upcase+new_s[1...-1]
		
	end

	def title=(new_title)
	    @title = titleize new_title
  	end
end
