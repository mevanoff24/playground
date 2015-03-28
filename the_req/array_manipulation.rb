

stuff = [:dog,:cat,:orange,:banana]

p new_stuff = stuff.slice!(1..2)
p new_stuff << :apple
p new_stuff.pop
p new_stuff.unshift(:fish)
p new_stuff.shift