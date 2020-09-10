def bubble_sort(arr)
    return arr if arr.length<=1
    swap=true
    while swap do
        swap=false
        (arr.length-1).times do |x|
            if arr[x]>arr[x+1]
                arr[x], arr[x+1]=arr[x+1], arr[x]
                swap=true
            end
        end
    end
    arr
end

puts bubble_sort([2,1,5,6,8,7])