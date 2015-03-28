# Array manipulation in RubyTry Me!
# Suppose you have the following array

# stuff = [:dog,:cat,:orange,:banana]
# How can you slice this array to create a new array [:cat,:orange]
# Add the element :apple on to the end of the array.
# Now take :apple back off again
# Add the element :fish to the start of the array.
# Now remove the element :fish.

stuff = [:dog,:cat,:orange,:banana]

p new_stuff = stuff.slice!(1..2)
p new_stuff << :apple
p new_stuff.pop
p new_stuff.unshift(:fish)
p new_stuff.shift