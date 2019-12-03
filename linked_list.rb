class LinkedList
    def initialize
        @head = nil
        @tail = nil
    end

    def append(value)
        new_node = Node.new(value, @index)


        if @head == nil
            @head = new_node.value
            @tail = new_node.value
        else
            @tail = new_node.value
        end
    end

    def prepend
        new_node = Node.new(value, @index)

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
    end

    def contains?
    end

    def find(data)
    end

    def to_s
    end

    def insert_at(index)

    end

    def remove_at(index)

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