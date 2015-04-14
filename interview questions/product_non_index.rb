  def get_products_of_all_ints_except_at_index(array)

    # we make an array with the length of the input array to
    # hold our products
    products_of_all_ints_except_at_index = []

    # for each integer, we find the product of all the integers
    # before it, storing the total product so far each time
    product = 1
    i = 0
    while i < array.length
       products_of_all_ints_except_at_index[i] = product
       product *= array[i]
       i += 1
    end
    
    # for each integer, we find the product of all the integers
    # after it. since each index in products already has the
    # product of all the integers before it, now we're storing
    # the total product of all other integers
    product = 1
    i = array.length - 1
    while i >= 0
      products_of_all_ints_except_at_index[i] *= product
      product *= array[i]
      i -= 1
     end

    return products_of_all_ints_except_at_index
  end

  p get_products_of_all_ints_except_at_index([3,4,5,6])
