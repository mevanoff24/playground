

def pascal_triangle(row_number)
  if row_number == 0
    return 1
  end
  
  previous_number = pascal_triangle(row_number - 1)
  
  ret = []
  
  (previous_number.length - 1).times do |index|
    ret.push (previous_number[index] + previous_number[index + 1])
  end
  
  return [1, ret, 1].flatten
end
 
def pascal(row_number)
  pascal_triangle(row_number - 1)
end

pascal_triangle(4)