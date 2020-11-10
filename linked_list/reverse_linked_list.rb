# Definition for singly-linked list.

# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}

def reverse_list(head)
    cur_node = head
    prev_node = nil

    until cur_node == nil
        next_node = cur_node.next
        cur_node.next = prev_node
        prev_node = cur_node
        cur_node = next_node
    end
    prev_node
end

# how to run in ruby?
