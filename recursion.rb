def fibs(n)
	arr = [0, 1]
	i = 1
	(n - arr.length()).times do
		arr << arr[i] + arr[i-1]
		i+=1
	end
	arr
end

p fibs(8)