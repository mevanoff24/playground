

class Tree

   attr_accessor :left, :right, :data

  def initialize(x = nil)
    @left = nil
    @right = nil
    @data = x
  end

   def search(x)
    if self.data == x
     return self
    else
     left_tree = left != nil ? left.search(x) : nil
     return left_tree if left_tree != nil
     right_tree = right != nil ? right.search(x) : nil
     return right_tree if right_tree != nil
    end
    nil
   end

  end

  keys = [50, 20, 80, 10, 30, 70, 90, 5, 14,
      28, 41, 66, 75, 88, 96]

  tree = Tree.new

  keys.each {|x| tree.insert(x)}

  s1 = tree.search(75)  # Returns a reference to the node
              # containing 75...

  s2 = tree.search(100) # Returns nil (not found)