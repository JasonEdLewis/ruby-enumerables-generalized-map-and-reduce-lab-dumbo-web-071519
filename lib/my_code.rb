# Your Code Here
require "pry"
def map(arr)
  results = []
  i = 0
  while i < arr.length
  n = yield arr[i]
  results.push(n)
  i += 1
end
  results
end

def reduce(array,start = nil)
    binding.pry
    if start == nil
     start = array[0]
      i = 1
    else
     i = 0
    end
    accumulator = start
    while i < array.length
    current = array[i]
    accumulator = yield(current, accumulator)
    i += 1
  end
    accumulator
end

