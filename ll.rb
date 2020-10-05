class Node
    attr_accessor :next
    attr_reader :value

    def initialize(value)
        @value = value
        @next = nil
    end

    def to_s
        "Node with value: #{@value}"
    end
end

class MyLinkedList

    def initialize
        @head = nil
    end

    def hello
        puts "hello"
    end

end

node = Node.new(1)
puts node
