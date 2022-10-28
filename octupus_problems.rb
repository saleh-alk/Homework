arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiissshhhhhh','fiiiish', 'fffish', 'ffiiiiisshh', 'fsh']
##Sluggish Octopus
largest = ""
arr.each do |el1|
    arr.each do |el2|
        if el1.length > el2.length
            largest = el1 if el1.length > largest.length
        else
            largest = el2 if el2.length > largest.length
        end
    end
end
p largest

## dominant octupus
def quick_sort(arr)
    return arr if arr.length <= 1

    pivot = arr.first

    left = arr.select{|ele| ele.length < pivot.length}
    right = arr.select{|ele| ele.length > pivot.length}

    quick_sort(left) + [pivot] + quick_sort(right)

end
p quick_sort(arr)[-1]

## clever octopus
def clever(arr)
    longest = ''
    arr.each_with_index do |ele, i|
        next if i == arr.length-1

        if ele.length > arr[i+1].length
            longest = ele if ele.length > longest.length
        else
            longest = arr[i+1] if arr[i+1].length > longest.length
        end
    end
    longest
end

p clever(arr)


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down",
    "left",  "left-up" ]

def slow_dance(move, tiles_array)
    tiles_array.index(tiles_array.select{|ele| ele == move}[0])
end

p slow_dance("right-down", tiles_array)



def fast_dance(move, tiles_array)
    tiles_array.index(move)
end
p fast_dance("right-down", tiles_array)
