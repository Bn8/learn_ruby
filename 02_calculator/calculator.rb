#write your code here
def add x, y
	return x+y
end

def subtract x, y
	return x-y
end

def sum arr
	s=0
	arr.each{|x| s+=x }
	return s
end

def multiply(*nums)
	res = 1
	nums.each{|x| res *= x}
	return res
end


def power x, y
	return x**y
end



def factorial x
	return multiply(*(1..(x)).to_a)
end
