class LinkedList
    class Node
        def initialize(data=nil, next_node=nil)
            @data = data
            @next_node = next_node
        end
        
        attr_accessor :data, :next_node
    end

    def initialize
        @head = Node.new
    end

    attr_accessor :head

    def append(value)
        if head.next_node == nil
            head.next_node = Node.new(value)
        else
            tmp = head
            while tmp.next_node != nil
                tmp = tmp.next_node
            end
            tmp.next_node = Node.new(value)
        end
    end

    def prepend(value)
        tmp = head
        head.next_node = Node.new(value, tmp)
    end

    def size
        size = 0
        tmp = head
        while tmp.next_node != nil
            tmp = tmp.next_node
            size += 1
        end
        return size
    end

    def head
        return head
    end

    def tail
        tmp = head
        while tmp.next_node != nil
            tmp = tmp.next_node
        end
        return tmp
    end

    def at(index)
        tmp = head
        i = 0
        while tmp.next_node != nil && i < index
            tmp = tmp.next_node
            i += 1
        end
        if i < index
            puts 'Index out of range'
            return
        end
        return tmp
    end

    def pop
        prev = nil
        curr = head
        while curr.next_node != nil
            prev = curr
            prev = prev.next_node
        end
        prev.next_node = nil
    end

    def contains?(value)
        tmp = head
        while tmp.next_node != nil
            return true if tmp.data == value
            tmp = tmp.next_node
        end
        return false
    end

    def find(value)
        tmp = head
        i = 0
        while tmp.next_node != nil
            return i if tmp.data == value
            tmp = tmp.next_node
            i += 1
        end
        puts 'node not found'
        return nil
    end

    def to_s
        tmp = head
        string = ""
        while tmp.next_node != nil
            string += "(#{tmp.data}) -> "
            tmp = tmp.next_node
        end
        string += "nil"
        return string
    end
end