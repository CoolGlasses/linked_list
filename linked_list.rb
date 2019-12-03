##a linkedlist in ruby is code for Russian dolls!

class LinkedList
    def initialize
        @head = nil
        @tail = nil
    end

    def append(value)
        new_node = Node.new(value)

        if @head == nil
            @head = new_node
            @tail = new_node
        else
            @tail.next = new_node
            @tail = new_node
        end
    end

    def prepend
        new_node = Node.new(value)

        if @head == nil
            @head = new_node
            @tail = new_node
        else
            new_node.next = @head
            @head = new_node
        end
    end

    def size
        count = 0
        this_node = @head

        finished_counting = false
        while !finished_counting
            if this_node.next != nil
                count += 1
            else
                finished_counting = true
            end

            this_node = this_node.next
        end

        return count
    end

    def head
        @head
    end

    def tail
        @tail
    end

    def at(index)
        count = 0
        this_node = @head

        finished_counting = false
        while !finished_counting
            if index == count
                finished_counting = true
            else
                count += 1
                this_node = this_node.next
            end
        end
        return this_node
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
    def initialize(value = nil, next_node = nil)
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