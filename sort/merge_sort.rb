# Recursive

# Pseudo Code
# n = length
# a = left array n/2
# b = right array n/2
# i = 1, j = 1

# for k = 1 
# 	if A(i) < B(j)
# 		output(k) = A(i)
# 		i+1
# 	else
# 		A(i) > B(j)
# 		output(k) = B(j)
# 		j+1

def merge_sort(array)
	if array.length <= 1
		array
	else
		middle_index = (array.length / 2).floor
		left = merge_sort(array[0..middle_index - 1])
		right = merge_sort(array[middle_index..array.length])
		merge(left, right)
	end
end

def merge(left, right)
	if left.empty?
		right
	elsif right.empty?
		left
	elsif left.first < right.first
		[left.first] + merge(left[1..left.length], right)
	else
		[right.first] + merge(left, right[1..right.length])
	end
end

p merge_sort([5,3,2,5,8,9,2])

# Big O

# O(n log(n))