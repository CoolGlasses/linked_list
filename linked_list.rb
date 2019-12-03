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
        this_node = @head

        finished = false
        while !finished
            if this_node == @tail
                finished = true
                @tail = previous_node
            else
                previous_node = this_node
                this_node = this_node.next
            end
        end
        return this_node
    end

    def contains?(value)
        this_node = @head
        in_list = false

        finished = false
        while !finished
            if this_node.value == value
                in_list = true
                finished = true
                return in_list
            elsif this_node.next == nil
                finished = true
                return in_list
            else
                this_node = this_node.next
            end
        end
    end

    def find(data)
        this_node = @head
        index = 0

        finished = false
        while !finished
            if this_node.value == data
                finished = true
                return index
            elsif this_node.next == nil
                finished = true
                return false
            else
                this_node = this_node.next
                index += 1
            end
        end
    end

    def to_s
        this_node = @head
        linked_list = ""

        finished = false
        while !finished
            if this_node.next == nil
                finished = true
                linked_list += this_node.value.to_s
                return linked_list
            else
                linked_list += this_node.value.to_s
                this_node = this_node.next
            end
        end
    end

    def insert_at(index)
        count = 0
        this_node = @head
        new_node = Node.new

        finished_counting = false
        while !finished_counting
            if index == count
                finished_counting = true
                previous_node.next = new_node
                new_node.next = this_node
            else
                count += 1
                previous_node = this_node
                this_node = this_node.next
            end
        end
    end

    def remove_at(index)
        count = 0
        this_node = @head

        finished_counting = false
        while !finished_counting
            if index == count
                finished_counting = true
                previous_node.next = this_node.next
            else
                count += 1
                previous_node = this_node
                this_node = this_node.next
            end
        end
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
end