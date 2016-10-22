class ListNode
  attr_accessor :val, :next
  def initialize(val, nextN = nil)
    @val = val
    @next = nextN
  end
end

def reverse_list(head)
  previous = nil
  current = head
  while current != nil
    aux = current.next
    current.next = previous
    previous = current
    current =  aux
  end
  return previous
end

head = ListNode.new(1,ListNode.new(2,ListNode.new(3,ListNode.new(4))))
p reverse_list(head)
