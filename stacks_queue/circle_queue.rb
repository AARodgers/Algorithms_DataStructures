require 'pry'
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
    attr_accessor :front, :length, :rear, :q

    =begin
        Initialize your data structure here. Set the size of the queue to be k.
        :type k: Integer
    =end
        def initialize(k)
            @q = Array.new(k);
            @length = 0;
            @front = 0;
            @rear = -1;
        end


    =begin
        Insert an element into the circular queue. Return true if the operation is successful.
        :type value: Integer
        :rtype: Boolean
    =end
        def en_queue(value)
            if is_full() == true
                return false
            end

            @rear = (@rear +1) % (@q.length)
            @q[@rear] = value
            @length += 1
            return true
        end


    =begin
        Delete an element from the circular queue. Return true if the operation is successful.
        :rtype: Boolean
    =end
        def de_queue()
            if is_empty() == true
                return false
            end

            @front = (@front + 1) % (@q.length);
            @length -= 1
            return true;
        end


    =begin
        Get the front item from the queue.
        :rtype: Integer
    =end
        def front()
            return is_empty() ? -1 : @q[@front];
        end


    =begin
        Get the last item from the queue.
        :rtype: Integer
    =end
        def rear()
            return is_empty() ? -1 : @q[@rear];
        end


    =begin
        Checks whether the circular queue is empty or not.
        :rtype: Boolean
    =end
        def is_empty()
           if @q.length == 0
               true
           else
               false
           end
        end


    =begin
        Checks whether the circular queue is full or not.
        :rtype: Boolean
    =end
        def is_full()
            if @q.length == length
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
