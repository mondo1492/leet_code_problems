require 'byebug'
class MinHeap
  def initialize(arr)
    @store = arr
  end

  def peak
    @store[0]
  end

  def peak_and_remove
    min = @store[0]
    @store[0] = @store.pop
    heapifydown
    min
  end

  def get_child_idx(idx)
    childIdx = (idx * 2) + 1
    childIdx
  end

  def heapifyup
    currentIdx = @store.length - 1
    return if currentIdx == 0
    parentIdx = get_parent_idx(currentIdx)

    until @store[parentIdx] < @store[currentIdx]
      @store[parentIdx], @store[currentIdx] = @store[currentIdx], @store[parentIdx]
      currentIdx = parentIdx
      parentIdx = get_parent_idx(currentIdx)
    end
    @store
  end

  def get_parent_idx(idx)
    if idx.odd?
      parentIdx = (idx - 1) / 2
    else
      parentIdx = (idx - 2) / 2
    end
    parentIdx
  end

  def heapifydown
    currentIdx = 0
    childLeft = get_child_idx(currentIdx)
    childRight = childLeft + 1

    while (@store[childLeft] && @store[currentIdx] > @store[childLeft]) ||
          (@store[childLeft] && @store[currentIdx] > @store[childRight])
      if @store[childLeft] < @store[childRight]
        @store[childLeft], @store[currentIdx] = @store[currentIdx], @store[childLeft]
        currentIdx = childLeft
      else
        @store[childRight], @store[currentIdx] = @store[currentIdx], @store[childRight]
        currentIdx = childRight
      end
      childLeft = get_child_idx(currentIdx)
      childRight = childLeft + 1
    end
    @store
  end

  def insert(num)
    @store.push(num)
    heapifyup
  end
  debugger
end

# MinHeap.new([1,2,3,4,5,6])

#[1,2,3,4,5,6,7]
