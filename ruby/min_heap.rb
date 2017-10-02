class MinHeap
  attr_accessor :elements

  def initialize
    @elements = [nil]
  end

  def <<(element)
    @elements << element
    heapify(@elements.size - 1)
  end

  def heapify(index)
    parent_index = (index / 2)
    return if index <= 1
    return if @elements[parent_index] <= @elements[index]
    swap(index, parent_index)
    heapify(parent_index)
  end

  def swap(index, parent_index)
    @elements[index], @elements[parent_index] = @elements[parent_index], @elements[index]
  end

  def pop
    swap(1, @elements.size - 1)
    min = @elements.pop
    heapify_up(1)
    min
  end

  def heapify_up(index)
    child_index = (index * 2)
    return if child_index > @elements.size - 1
    not_the_last_element = child_index < @elements.size - 1
    left_element = @elements[child_index]
    right_element = @elements[child_index + 1]
    child_index += 1 if not_the_last_element && right_element < left_element
    return if @elements[index] <= @elements[child_index]
    swap(index, child_index)
    heapify_up(child_index)
  end
end


