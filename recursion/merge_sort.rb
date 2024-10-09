def merge_sort(array)
  return array if array.length <= 1

  mid = array.length/2
  left = merge_sort(array.slice(0...mid))
  right = merge_sort(array.slice(mid...array.length))
  
  merge(left, right)
end

def merge(left, right)
  sorted = []

  while !left.empty? && ! right.empty? do
    if left[0] < right[0]
      sorted.push(left.shift)
    else
      sorted.push(right.shift)
    end
  end
  sorted.concat(left).concat(right)
end

puts merge_sort([3, 2, 1, 13, 8, 5, 0, 1])