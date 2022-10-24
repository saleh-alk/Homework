require 'byebug'
class GraphNode

    attr_reader :val
    attr_accessor :neighbors
    def initialize(val)
        @val = val
        @neighbors = []
    end

    def self.bfs(starting_node, target_value)
        arr = [starting_node]

        until arr.empty?
            k = arr.shift
            return k if k.val == target_value
            arr += k.neighbors
        end

        return nil




    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
p GraphNode.bfs(a, 'd')
