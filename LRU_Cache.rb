class LRUCache

    def initialize(n)
        @max_size = n
        @cache = []
    end

    def count
      # returns number of elements currently in cache
      cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if count == @max_size && cache.include?(el)
        cache.delete(el)
        cache << el
      elsif count == @max_size
        cache.shift
        cache << el
      else
        cache << el
      end


    end

    def show
      # shows the items in the cache, with the LRU item first
      cache
    end

    private
    # helper methods go here!
    attr_reader :cache

  end


  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  p johnny_cache.show