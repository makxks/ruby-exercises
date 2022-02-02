def bubble_sort(numbers)
  sorted = false
  while !sorted
    sorted = true
    numbers.each_with_index do |number, index|
      if(index != numbers.length - 1)
        if numbers[index+1] < number
          numbers[index], numbers[index+1] = numbers[index+1], number
          sorted = false
        end
      end
    end
  end
  p numbers
end

bubble_sort([4,3,78,2,0,2])

# => [0,2,2,3,4,78]