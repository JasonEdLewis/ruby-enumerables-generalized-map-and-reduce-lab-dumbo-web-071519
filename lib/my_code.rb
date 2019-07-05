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

def reduce(array,start = 0)
    if start == "" 
     start = array[0]
    end
     i = 0
    accumulator = yield start
    while i < array.length
    current = yield array[i]
    accumulator += current
    i += 1
    
  end
    accumulator
end

