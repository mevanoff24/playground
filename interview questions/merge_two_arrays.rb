
  def merge_arrays(my_array, alices_array)

    # set up our merged_array
    merged_array_size = my_array.length + alices_array.length
    merged_array = []

    current_index_alices = 0
    current_index_mine = 0
    current_index_merged = 0

    while(current_index_merged < merged_array_size)

        is_my_array_exhausted = current_index_mine >= my_array.length
        is_alices_array_exhausted = current_index_alices >= alices_array.length

        # case: next comes from my array
        # my array must not be exhausted, and EITHER:
        # 1) alice's array IS exhausted, or
        # 2) the current element in my array is less
        #    than the current element in alice's array
        p merged_array
        if !is_my_array_exhausted && is_alices_array_exhausted || my_array[current_index_mine] < alices_array[current_index_alices]

            merged_array << my_array[current_index_mine]
            current_index_mine += 1

        # case: next comes from alice's array
        else
            merged_array << alices_array[current_index_alices]
            current_index_alices += 1
        end

        # current_index_merged += 1
    end

    return merged_array
end

my_array     = [3,4,6,10,11,15]
alices_array = [1,5,8,12,14,19]

p merge_arrays(my_array, alices_array)
# prints [1,3,4,5,6,8,10,11,12,14,15,19]