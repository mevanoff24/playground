int array[]

boolean bsearch(int[] a, int n)
true if n is in a, otherwise false

pseduocode
split the array in half 
and check if the n mi

def binary_search(array, n)
    middle_index = array.length / 2
    middle_number = array[middle_index]
    upper = array[middle_index+1..array.length]
    lower = array[0..middle_index]
    
    if array.length == 1 && n != middle_number
        false
    elsif n == middle_number
        true
    elsif n < middle_number
        binary_seach(lower, n)
    elsif n > middle_number
        binary_search(upper, n)
    end
    
end 

array[m][n], x
this array is column-wise sorted, and row-wise sorted
true if x is in array, otherwise false

[1 5 10]
[2 8 12]
[4 9 15]

8 true
6 false
m = array.length
n = array[0].length
def binary_search_2d(array, m, n, x)
    array.each do |row|
        
        if binary_search(row, x) # O(log(n))
          return true
        end
    end
    false
end








