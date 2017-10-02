require 'pry'
require './max_heap.rb'
require './min_heap.rb'

class MedianFinder
  attr_accessor :max_heap, :min_heap

=begin
    initialize your data structure here.
=end
  def initialize
    @max_heap = MaxHeap.new
    @min_heap = MinHeap.new
  end


=begin
    :type num: Integer
    :rtype: Void
=end
  def add_num(num)
    @min_heap << num
    @max_heap << @min_heap.pop

    if @min_heap.elements.size < @max_heap.elements.size
      @min_heap << @max_heap.pop
    end

  end

=begin
    :rtype: Float
=end
  def find_median
    return (@min_heap.elements.size > @max_heap.elements.size) ?  (@min_heap.elements[1] * 1.0) : ((@min_heap.elements[1] + @max_heap.elements[1]) * 0.5)
  end
end

input = [78, 14, 50, 20,13,9, 25, 8, 13, 37, 29, 33, 55, 52, 6, 17, 65, 23, 74, 43, 5, 29 , 29, 72, 7, 13, 56]
mf = MedianFinder.new

input.each do |val|
  mf.add_num(val)
  p mf.find_median
  p mf.max_heap
  p mf.min_heap
end
