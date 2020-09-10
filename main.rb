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

def bubble_sort_by(arr)
    return arr if arr.length<=1
    swap = true
    while swap do
        swap=false
        (arr.length-1).times do |x|
            if yield(arr[x], arr[x+1]) >= 0
                arr[x], arr[x+1]=arr[x+1], arr[x]
                swap=true
            end
        end
    end
    p arr
end


bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end