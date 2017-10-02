# Merge k sorted linked lists and return it as one sorted list. Analyze and describe its complexity.
# Definition for singly-linked list.
class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

# @param {ListNode[]} lists
# @return {ListNode}
def merge_k_lists(lists)
  arr = dump_to_array(lists)
  merge_sort(arr, 0, arr.size-1)
  list = arr_to_list(arr)
  return list

end

def merge_sort(arr, first, last)
  if first < last
    half = (first + last) / 2
    merge_sort(arr, first, half)
    merge_sort(arr, half+1, last)
    merge(arr, first, half, last)
  end
end

def merge(arr, first, half, last)
  n1 = half - first + 1
  n2 = last - half
  lar = []
  rar = []
  (0...n1).each do |i|
    lar[i] =  arr[first + i]
  end
  (0...n2).each do |j|
    rar[j] =  arr[half + j + 1]
  end
  lar[lar.length] = 88888888
  rar[rar.length] = 88888888
  i = j = 0
  (first..last).each do |k|
   if(lar[i] <= rar[j])
     arr[k] = lar[i]
     i+=1
   else
     arr[k] = rar[j]
     j+=1
   end
  end
end

def arr_to_list(arr)
  return [] if arr.empty?
  first = ListNode.new(arr.first)
  oltrta =  first
  arr[1..-1].each do |val|
    oltrta.next = ListNode.new(val)
    oltrta = oltrta.next
  end
  return first
end

def dump_to_array(lists)
  oltrta = []
  lists.each do |something|
    if something && something != []
      current = something
      while current.next != nil
        oltrta.push(current.val)
        current = current.next
      end
      oltrta.push(current.val)
    end
  end
  return oltrta
end


l1 = ListNode.new(1)
l1.next = ListNode.new(2)
l1.next.next = ListNode.new(3)
l1.next.next.next = ListNode.new(4)
l2 = ListNode.new(4)
l2.next = ListNode.new(5)
l2.next.next = ListNode.new(6)
l2.next.next.next = ListNode.new(7)
lists = [ l1, l2 ]
p merge_k_lists(lists)
