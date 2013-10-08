def sum(array) 
    total= 0
    if array.count == 0 
        return 0
    end
    array.each do |value|
        total = total + value
    end
    return total
end

def max_2_sum(array)
    if array.count == 0
        return 0
    elsif
        array.count == 1
        return array.pop
    end
    #array.sort_by{ |value| value["value"]}
    sorted_array=array.sort
    total = sorted_array.pop + sorted_array.pop
    return total
end

def sum_to_n?(array, sum_to_this)
    if array.count == 0
        return sum_to_this == 0
    end
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

