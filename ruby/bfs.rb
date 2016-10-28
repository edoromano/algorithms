class Node
  attr_accessor :next_node, :value, :visited

  def initialize(value, next_node = nil)
    self.next_node = next_node
    self.value = value
    self.visited = false
  end
end

def bfs(dictionary, head)
  queue = []
  queue.push(dictionary[head])
  while !queue.empty?
    current = queue.pop
    if !current.visited
      current.visited = true
      p current.value
      next_n = current.next_node
      while next_n != nil
        queue.push(dictionary[next_n.value])
        next_n = next_n.next_node
      end
    end
  end
end


dictionary = {}
dictionary["a"] = Node.new("a", Node.new("b",Node.new("s")))
dictionary["b"] = Node.new("b", Node.new("a"))
dictionary["s"] = Node.new("s", Node.new("a",Node.new("c", Node.new("g"))))
dictionary["c"] = Node.new("c", Node.new("s",Node.new("d", Node.new("e", Node.new("f")))))
dictionary["d"] = Node.new("d", Node.new("c"))
dictionary["f"] = Node.new("f", Node.new("c", Node.new("g")))
dictionary["g"] = Node.new("g", Node.new("s", Node.new("f", Node.new("h"))))
dictionary["e"] = Node.new("e", Node.new("c", Node.new("h")))
dictionary["h"] = Node.new("h", Node.new("e", Node.new("g")))

p dictionary
bfs(dictionary, "a")
