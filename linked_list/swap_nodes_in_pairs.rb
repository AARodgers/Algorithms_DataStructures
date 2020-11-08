require 'pry'

# Given a linked list, swap every two adjacent nodes and return its head.

# You may not modify the values in the list's nodes. Only nodes itself may be changed.

# Input: head = [1,2,3,4]
# Output: [2,1,4,3]

# Definition for singly-linked list.

# class ListNode
#     attr_accessor :val, :next

#     def initialize(val = 0, next = nil)
#         @val = val
#         @next = next
#     end
# end

# ??? why wont this run
head =  [1,2,3,4]
#others_solution: 
def swap_pairs(head)
    dummy = ListNode.new(0)
    dummy.next = swap(head)

    return dummy.next
end

def swap(head)
    if head == nil
        return nil
    elsif head.next == nil
        return head
    else
        tmp = head
        tmp_next = head.next.next
        head = head.next
        head.next = tmp
        head.next.next = swap(tmp_next)
        return head
    end
end

swap_pairs(head)


# def swap_pairs(head)
#     return nil unless head
#   new_head = nil
#   if head.next
#     new_head = head.next
#     head.next = new_head.next
#     new_head.next = head
#     head.next = swap_pairs(head.next)
#   else
#     new_head = head
#   end
#   new_head
# end

# puts swap_pairs(head)
