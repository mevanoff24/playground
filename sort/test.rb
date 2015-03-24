
# # PS
# middle index = array /2
# set left right arrays
# call other method

# if one side empty do other side
# else left.first + recursive right
# else swith 

def merge_sort(array)
	if array.length <= 1
		array
	else
		middle_index = (array.length / 2).floor
		left = merge_sort(array[0..middle_index-1])
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
		[left.first] + merge(left[1..left.first], right)
	else
		[right.first] + merge(left, right[1..right.first])
	end
end


p merge_sort([4,5,2,1,6,8])
