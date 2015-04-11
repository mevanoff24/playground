
def powerset(index, elements, current_subset)
	if index == elements.length
		puts current_subset.join(" : ")
	else
		powerset(index+1, elements, current_subset)
		powerset(index+1, elements, current_subset + [elements[index]])
	end
end

powerset(0,["A","B","C","D","E","F","G","H"],[])