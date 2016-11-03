#Search though the array
#find a value equal to input
#print the index of where it is
#If it doesn't match anything put nil

arr = [42, 89, 23, 1]
#p arr
def search_array(array,int)
	index = 0
	while index < array.length
			if array[index]!= int
			p nil
			index = nil

			elsif array[index] == int
			p index
			end
		if index == nil
			index = array.length
		else 
		index += 1
		end
	end

	end
end
search_array(arr,14)
#search_array(arr,23)





