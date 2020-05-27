def bubble_up(array)
  result_array = array
  repeat = true

  while repeat do
    repeat = false
    for i in 1...array.length
      # check if the element and the previous element need to be swaped
      if result_array[i-1] > result_array[i]
        # swap elements
        element = result_array[i]
        result_array[i] = result_array[i-1]
        result_array[i-1] = element
        # trigger another full cycle 
        repeat = true
      end
    end
  end

  result_array
end


p bubble_up(["you!","hey","you","Andy"])