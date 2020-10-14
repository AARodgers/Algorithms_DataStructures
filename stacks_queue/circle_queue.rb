# Your implementation should support following operations:

# MyCircularQueue(k): Constructor, set the size of the queue to be k.
# Front: Get the front item from the queue. If the queue is empty, return -1.
# Rear: Get the last item from the queue. If the queue is empty, return -1.
# enQueue(value): Insert an element into the circular queue. Return true if the operation is successful.
# deQueue(): Delete an element from the circular queue. Return true if the operation is successful.
# isEmpty(): Checks whether the circular queue is empty or not.
# isFull(): Checks whether the circular queue is full or not.


# Example:

# MyCircularQueue circularQueue = new MyCircularQueue(3); // set the size to be 3
# circularQueue.enQueue(1);  // return true
# circularQueue.enQueue(2);  // return true
# circularQueue.enQueue(3);  // return true
# circularQueue.enQueue(4);  // return false, the queue is full
# circularQueue.Rear();  // return 3
# circularQueue.isFull();  // return true
# circularQueue.deQueue();  // return true
# circularQueue.enQueue(4);  // return true
# circularQueue.Rear();  // return 4

class MyCircularQueue

    =begin
    Initialize your data structure here. Set the size of the queue to be k.
    :type k: Integer
=end
    def initialize(k)
        @queue = Array.new(k)
        @head, @tail = 0, 0
        @k = k
    end


=begin
    Insert an element into the circular queue. Return true if the operation is successful.
    :type value: Integer
    :rtype: Boolean
=end
    def en_queue(value)

        add_element = @queue.push(value)
        if add_element
            true
        else
            false
        end
    end


=begin
    Delete an element from the circular queue. Return true if the operation is successful.
    :rtype: Boolean
=end
    def de_queue()
        arr = @queue.delete("@head")
        if arr
            true
        else
            false
        end
    end


=begin
    Get the front item from the queue.
    :rtype: Integer
=end
    def front()
        @queue.first
    end


=begin
    Get the last item from the queue.
    :rtype: Integer
=end
    def rear()
        @queue.last
    end


=begin
    Checks whether the circular queue is empty or not.
    :rtype: Boolean
=end
    def is_empty()
       @tail = @head
    end


=begin
    Checks whether the circular queue is full or not.
    :rtype: Boolean
=end
    def is_full()
        if @queue.count >= k.to_i
            true
        else
            false
        end
    end


end

    # Your MyCircularQueue object will be instantiated and called as such:
    # obj = MyCircularQueue.new(k)
    # param_1 = obj.en_queue(value)
    # param_2 = obj.de_queue()
    # param_3 = obj.front()
    # param_4 = obj.rear()
    # param_5 = obj.is_empty()
    # param_6 = obj.is_full()
