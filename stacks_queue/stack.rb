class MinStack

    # =begin
    #     initialize your data structure here.
    # =end
        def initialize()
           @stack = []
        end


    # =begin
    #     :type x: Integer
    #     :rtype: Void
    # =end
        def push(x)
            if @stack.empty?
                @stack << [x, x]
            else
                min = [get_min, x].min
                @stack << [x, min]
            end
        end

    # =begin
    #     :rtype: Void
    # =end
        def pop()
           @stack.pop[0] if @stack.any?
        end

    # =begin
    #     :rtype: Integer
    # =end
        def top()
            @stack[-1][0]
        end

    # =begin
    #     :rtype: Integer
    # =end
        def get_min()
           @stack[-1][1]
        end
    end

    # Your MinStack object will be instantiated and called as such:
    # obj = MinStack.new()
    # obj.push(x)
    # obj.pop()
    # param_3 = obj.top()
    # param_4 = obj.get_min()

# Input
# ["MinStack","push","push","push","getMin","pop","top","getMin"]
# [[],[-2],[0],[-3],[],[],[],[]]

# Output
# [null,null,null,null,-3,null,0,-2]
