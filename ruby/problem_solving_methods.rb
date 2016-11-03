#Search though the array
#find a value equal to input
#print the index of where it is
#If it doesn't match anything put nil

arr = [42, 89, 23, 1]
#p arr


def search_array(array,int)
	index = 0
	until index == array.length
			if array[index] == int
				return index
			end
	index += 1
	end
	return nil
end


p search_array(arr,90)
#p search_array(arr,24)

#takes the array
#sets index to 0
#gets array length




