class LinkedList
    def initialize
        @head = nil
        @tail = nil
        @size = 0
    end

    def append(value)
        new_node = Node.new(value)
        @size += 1

        if @head == nil
            @head = new_node.value
            @tail = new_node.value
        else
            @tail = new_node.value
        end
    end

    def prepend
        new_node = Node.new(value)
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
    def initialize(value)
        @value = value
        @next_node = nil
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
end