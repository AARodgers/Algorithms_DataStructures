# Suppose Andy and Doris want to choose a restaurant for dinner, and they both have a list of favorite restaurants represented by strings.

# You need to help them find out their common interest with the least list index sum. If there is a choice tie between answers, output all of them with no order requirement. You could assume there always exists an answer.

# Example 1:

# Input:
list1 = ["Shogun","Tapioca Express","Burger King","KFC"]
list2 = ["Piatti","The Grill at Torrey Pines","Hungry Hunter Steakhouse","Shogun"]
# Output: ["Shogun"]
# Explanation: The only restaurant they both like is "Shogun".
# Example 2:

# Input: list1 = ["Shogun","Tapioca Express","Burger King","KFC"], list2 = ["KFC","Shogun","Burger King"]
# Output: ["Shogun"]
# Explanation: The restaurant they both like and have the least index sum is "Shogun" with index sum 1 (0+1).

# @param {String[]} list1
# @param {String[]} list2
# @return {String[]}

def find_restaurant(list1, list2)
    restaurants = {}
    matches = {}

      # iterate through first list and set the index as the key value
    list1.each_with_index do |restaurant, index|
        restaurants[restaurant] = index
    end

      # since we only care about matches, if there is a match from the first list, we only add the index for where the match occurs
    list2.each_with_index do | restaurant, index|
        if restaurants[restaurant]
            matches[restaurant] = (restaurants[restaurant] + index)
        end
    end

      # this will give us the lowest sum of the matched indexes
    lowest_index_sum = matches.values.min

      # we now need to select the keys that match our lowest index sum
    matches.keys.select {|match| lowest_index_sum == matches[match]}
end

puts find_restaurant(list1, list2)
