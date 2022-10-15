def fibs(n)
	arr = [0, 1]
	i = 1
	(n - arr.length()).times do
		arr << arr[i] + arr[i - 1]
		i += 1
	end
	arr
end

def fibs_rec(n)
	return [0, 1] if n <= 2
	arr = fibs_rec(n - 1)
	arr << arr [-1] + arr[-2]
	arr
end

p fibs(8)
p fibs_rec(8)