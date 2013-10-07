def sum(array) 
    total= 0
    array.each do |value|
        total = total + value
    end
    return total
end

def max_2_sum(array)
    #array.sort_by{ |value| value["value"]}
    sorted_array=array.sort
    total = sorted_array.pop + sorted_array.pop
    return total
end

def sum_to_n?(array, sum_to_this)
    array.each do |number|
        remainder=sum_to_this-number
        if number == remainder
            break unless array.count(number) > 1 
            return true
        end
        if array.include?(remainder)
            return true
        end
    end
    return false
end
