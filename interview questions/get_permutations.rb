
def get_permutations(string)
	if string.length <= 1
		return string
	end
	all_char_except_last = string[0..string.length-2]
	last_char = string[-1]

	permutations_of_all_chars_except_last = get_permutations(all_char_except_last)
	possible_positions_to_put_last_char = all_char_except_last.length+1
	permutations = []
	for permutation_of_all_chars_except_last in permutations_of_all_chars_except_last
    for position in possible_positions_to_put_last_char
      permutation = permutation_of_all_chars_except_last[position] + last_char + permutation_of_all_chars_except_last[position]
      permutations.append(permutation)
     end
    return permutations
  end
end

get_permutations("cat")