class LRUCache
  def initialize(max_size)
    @cache = []
    @max_size = max_size
  end

  def count
    # returns number of elements currently in cache
    @cache.size
  end

  def add(el)
    # adds element to cache according to LRU principle
      if @cache.include?(el)
        @cache.delete(el)
        @cache << el
      elsif count >= @max_size
        @cache.shift
        @cache << el
      else
        @cache << el
      end
    end

  def show
    # shows the items in the cache, with the LRU item first
    @cache
  end

  private
  # helper methods go here!

end
