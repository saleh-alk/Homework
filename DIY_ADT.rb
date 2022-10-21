class Stack

    attr_reader :stack
    def initialize
      # create ivar to store stack here!
      @stack = Array.new([]){Array.new([])}
    end

    def push(el)
      # adds an element to the stack
      if !@stack.include?(el)
        @stack << el
      end
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
        @stack[-1]
    end
  end

  b = Stack.new
p b.push('hi')
p b.push('what')
p b.pop
p b.stack


class Queue
    attr_reader :queue
    def initialize
        @queue = Array.new()
    end

    def enque(el)
        @queue << el if !@queue.include?(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[-1]
    end
end

c = Queue.new
p c.enque('dog')
p c.enque('d')
p c.dequeue


class Map
    #attr_reader :map
    def initialize
        @map = Array.new([]) {Array.new(2)}
    end

    def set(key, value)
        keys = @map.map{|arr| arr[0]}
        if !keys.include?(key)
            @map << [key,value]
        else
            @map.map{|arr| arr[1] = value if arr[0] == key}
        end
    end

    def get(key)
        @map.each {|arr| return arr if arr[0] == key }
    end

    def delete(key)
        @map = @map.reject{|arr| arr[0] == key }
    end

    def show
        @map
    end
end
