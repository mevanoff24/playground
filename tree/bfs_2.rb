
$list = {
  "A" => ["C","D","E"],
  "B" => ["C","F"],
  "C" => ["A","B","D","F","E"],
  "D" => ["A","C","E"],
  "E" => ["A","C","D"],
  "F" => ["B","C"]
 }


def BFS2()
  queue = []
  visited = {}
  queue << "A"
  visited["A"] = true
  puts "A "
    while queue.any?
      do_print = false
      node = queue.shift()
      $list[node].each do |child|
        if visited[child] != true then
           print "#{child} "
           queue.unshift(child)
           visited[child] = true
           do_print = true
        end
      end
      if do_print == true
        print "\n "
      end
    end
end

p BFS2()