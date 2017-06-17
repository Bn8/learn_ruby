class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def padzero num
		if num<10 then
			return "0#{num}"
		else
			return "#{num}"
		end
	end

	def time_string
		ts = ""
		hours = @seconds / (60*60)
		minutes = ( @seconds / 60 ) % 60
		seconds = ( @seconds ) % 60
		return "#{padzero hours}:#{padzero minutes}:#{padzero seconds}"
	end
end
