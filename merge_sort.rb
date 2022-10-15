def merge_sort(arr)
	return arr if arr.length < 2
	left_half = merge_sort(arr[0 .. arr.length / 2 - 1])
	right_half = merge_sort(arr[left_half.length .. arr.length - 1])
	sorted_arr = []
	until left_half.empty? && right_half.empty? do
		if left_half.empty? then
			return sorted_arr + right_half
		elsif right_half.empty? then
			return sorted_arr + left_half
		else
			sorted_arr << ((left_half[0] < right_half[0]) ? left_half.shift : right_half.shift)
		end
	end
	sorted_arr
end

p merge_sort([1, 4, 8, 3, 5, 9, 2, 0, 3])