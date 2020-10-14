def two_sum(nums, target)
    nums.each.with_index do |x_val, x_index|
        y_nums = nums.slice(x_index + 1, nums.count)
        y_nums.each.with_index do |y_val, y_index|
            if x_val + y_val == target
                return x_index, y_index + (x_index + 1)
            end
        end
    end
end
