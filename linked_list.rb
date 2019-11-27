
###how in the hell do we maintain an Index location of each node?  Can't possibly store them IN the node, but if I store them separately in an array or hash in the LinkedList as a Class variable, doesn't
###that mean the implementation of the LinkedList is pointless as it's backbone would be a different data structure?!

class LinkedList
    def initialize
        @head = nil
        @tail = nil
        @size = 0
        @index = 0
    end

    def append(value)
        new_node = Node.new(value, @index)
        @size += 1

        if @head == nil
            @head = new_node.value
            @tail = new_node.value
        else
            @tail = new_node.value
            @index += 1
        end
    end

    def prepend
        new_node = Node.new(value, @index)
        @size += 1

        if @head == nil
            @head = new_node.value
            @tail = new_node.value
        else 
            new_node.next = @head
            @head = new_node.value
        end
    end

    def size
        @size
    end

    def head
        @head
    end

    def tail
        @tail
    end

    def at(index)

    end

    def pop
        @size -= 1
    end

    def contains?
    end

    def find(data)
    end

    def to_s
    end

    def insert_at(index)
        @size += 1
    end

    def remove_at(index)
        @size -= 1
    end
end

class Node
    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end

    def value
        @value
    end

    def next
        @next_node
    end

    def next=(next_head)
        @next_node = next_head
    end

    def head
        @head
    end

    def index
        @index
    end
end