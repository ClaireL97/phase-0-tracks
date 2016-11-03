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

#p search_array(arr,23)
#p search_array(arr,24)

#take term number that we pass through as intergerr
#create an array with that amount of items in it.
#add the first 2 items in fibnum array to create third item.
# add index plus second index






def fib(term_num)
	number = 0
	fib_num = [0,1]
	until number == term_num-2
		sum = fib_num[number]+fib_num[number+1]
		fib_num.push (sum)
		number += 1
	end
	return fib_num
end

p fib(6)
p fib(100)

#this last variable is the number that was said that 100 would equal
last = 218922995834555169026

#checker to see if the value is true without doing it manually
if fib(100).last == last
	puts true
else 
	puts false
end








