# Given a linked list, swap every two adjacent nodes and return its head.

# You may not modify the values in the list's nodes. Only nodes itself may be changed.

# Input: head = [1,2,3,4]
# Output: [2,1,4,3]

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @return {ListNode}

head =  [1,2,3,4]

def swap_pairs(head)
    swap_base = (head = head.next)
    swap_pairs(head.next.next)
    swap_base + swap_pairs
end

swap_pairs(head)


# def swap_pairs(head)
#     pre = dummy = ListNode.new 0
#     pre.next = head
#     while a = pre.next and b = a.next
#         c = b.next
#         ((pre.next = b).next = a).next = c
#         pre = a
#     end
#     dummy.next
# end
