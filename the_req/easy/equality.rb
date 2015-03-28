# Symbols, strings and equality in Ruby
# In each example below indicate whether or not we should be asserting true or false. 
# (E.g. what should the ? be?).

# Explain the difference between ==, eql and equal?

# str1 = "chitter"
# str2 = "chitter"

# assert_equal ?, str1 == str2          True
# assert_equal ?, str1.eql?(str2)       True
# assert_equal ?, str1.equal?(str2)			False - Not same object
# assert_equal ?, str1.object_id == str2.object_id  False
# sym1 = :chatter 
# sym2 = :chatter

# assert_equal ?, sym1 == sym2          True
# assert_equal ?, sym1.eql?(sym2)				True
# assert_equal ?, sym1.equal?(sym2)			True
# assert_equal ?, sym1.object_id == sym2.object_id  True