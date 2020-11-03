require 'pry'

# Design HashSet

# Solution
# Design a HashSet without using any built-in hash table libraries.

# To be specific, your design should include these functions:

# add(value): Insert a value into the HashSet.
# contains(value) : Return whether the value exists in the HashSet or not.
# remove(value): Remove a value in the HashSet. If the value does not exist in the HashSet, do nothing.

# Example:

# MyHashSet hashSet = new MyHashSet();
# hashSet.add(1);
# hashSet.add(2);
# hashSet.contains(1);    // returns true
# hashSet.contains(3);    // returns false (not found)
# hashSet.add(2);
# hashSet.contains(2);    // returns true
# hashSet.remove(2);
# hashSet.contains(2);    // returns false (already removed)

class MyHashSet
    attr_accessor :container

    # =begin
    #     Initialize your data structure here.
    # =end
        def initialize()
            @container = Array.new()
        end


    # =begin
    #     :type key: Integer
    #     :rtype: Void
    # =end
        def add(key)
            @container[key] = true
        end


    # =begin
    #     :type key: Integer
    #     :rtype: Void
    # =end
        def remove(key)
            @container[key] = nil
        end


    # =begin
    #     Returns true if this set contains the specified element
    #     :type key: Integer
    #     :rtype: Boolean
    # =end
        def contains(key)
            !!@container[key]
        end
end

binding.pry

#how do i create an instance of a new hash when I run this file?
# why is the Hash initialized as an ARRAY??




    # Your MyHashSet object will be instantiated and called as such:
    # obj = MyHashSet.new()
    # obj.add(key)
    # obj.remove(key)
    # param_3 = obj.contains(key)
