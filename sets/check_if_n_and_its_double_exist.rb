# @param {Integer[]} arr
# @return {Boolean}

require 'set'

def check_if_exist(arr)
    set1 = arr.to_set
    set2 = arr.map { |n| n * 2}.to_set
    same = set1 & set2
    puts set1
    puts set2
    puts same

    if same == Set[0]
        if arr.count(0) > 1
            return true
        else
            return false
        end
    end

    !same.empty?
end

