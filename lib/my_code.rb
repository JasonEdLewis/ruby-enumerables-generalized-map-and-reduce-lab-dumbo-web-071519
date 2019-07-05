# Your Code Here
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
    if start == nil
     start = array[0]
      i = 1
    else
     i = 0
    end
    accumulator = yield start
    while i < array.length
    current = yield array[i]
    accumulator += current
    i += 1
    
  end
    accumulator
end

