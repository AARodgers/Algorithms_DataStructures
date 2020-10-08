class Node
    attr_accessor :value, :next

    def initialize(value)
        @value = value
        @next = nil
    end
end


class MyLinkedList

=begin
    Initialize your data structure here.
=end
    def initialize
        @head = nil
        @length = 0
    end


=begin
    Get the value of the index-th node in the linked list. If the index is invalid, return -1.
    :type index: Integer
    :rtype: Integer
=end
    def get(index)
        if index >= @length
            return -1
        end
        cur = @head
        while index > 0
            cur = cur.next
            index = index - 1
        end
        cur.value
    end


=begin
    Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list.
    :type val: Integer
    :rtype: Void
=end
    def add_at_head(val)
        node = Node.new(val)
        node.next = @head
        @head = node
        @length = @length + 1
    end


=begin
    Append a node of value val to the last element of the linked list.
    :type val: Integer
    :rtype: Void
=end
    def add_at_tail(val)
        node = Node.new(val)
        if @head == nil
            @head = node
            @length = @length + 1
            return
        end

        cur = @head
        until cur.next == nil
            cur = cur.next
        end
        cur.next = node
        @length = @length + 1
    end


=begin
    Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted.
    :type index: Integer
    :type val: Integer
    :rtype: Void
=end
    def add_at_index(index, val)
        if index == 0
            add_at_head(val)
            return
        end

        if index == @length
            add_at_tail(val)
            return
        end

        if index > @length
            return
        end

        node = Node.new(val)
        cur = @head

        while index > 1
            cur = cur.next
            index = index - 1
        end
        
        node.next = cur.next
        cur.next = node
        @length = @length + 1
    end


=begin
    Delete the index-th node in the linked list, if the index is valid.
    :type index: Integer
    :rtype: Void
=end
    def delete_at_index(index)
        if index >= @length
            return
        end
        if index == 0
            # if we get here, then you want to delete the head node
            @head = @head.next
            return
        end

        cur = @head
        while index > 1
            cur = cur.next
            index = index - 1
        end
        cur.next = cur.next.next
        @length = @length - 1
    end
end

# Your MyLinkedList object will be instantiated and called as such:
# obj = MyLinkedList.new()
# param_1 = obj.get(index)
# obj.add_at_head(val)
# obj.add_at_tail(val)
# obj.add_at_index(index, val)
# obj.delete_at_index(index)
