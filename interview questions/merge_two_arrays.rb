
  def merge_arrays(my_array, alices_array):

    # set up our merged_array
    merged_array_size = len(my_array) + len(alices_array)
    merged_array = [None] * merged_array_size

    current_index_alices = 0
    current_index_mine = 0
    current_index_merged = 0

    while(current_index_merged < merged_array_size):

        is_my_array_exhausted = current_index_mine >= len(my_array)
        is_alices_array_exhausted = current_index_alices >= len(alices_array)

        # case: next comes from my array
        # my array must not be exhausted, and EITHER:
        # 1) alice's array IS exhausted, or
        # 2) the current element in my array is less
        #    than the current element in alice's array
        if not is_my_array_exhausted and (is_alices_array_exhausted or \
            my_array[current_index_mine] < alices_array[current_index_alices]):

            merged_array[current_index_merged] = my_array[current_index_mine]
            current_index_mine += 1

        # case: next comes from alice's array
        else:
            merged_array[current_index_merged] = alices_array[current_index_alices]
            current_index_alices += 1

        current_index_merged += 1

    return merged_array