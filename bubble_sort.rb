# bubble sort
# baby's first sorting algorithm
require 'pry'

# num_list -> num_list
def bubble_sort(num_list)
  sorted = false
       # keeps loop running until list is sorted
  until sorted do
    i = 0
    sorted = true
       # runs over length of array once 
    for i in (0..(num_list.length - 2))
       # swaps a, b if a > b
      if num_list.at(i) > num_list.at(i + 1)
        num = num_list.at(i)
        num_list.delete_at(i)
        num_list.insert(i + 1, num)
        sorted = false
      end
    end
  end

  return num_list
end

print bubble_sort([4, 3, 78, 2, 0, 2]) # => [0, 2, 2, 3, 4, 78]
print bubble_sort([5, 3, 2, 1, 0]) # => [0, 1, 2, 3, 5]