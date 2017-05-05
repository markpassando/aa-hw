#LAST IN FIRST OUT
#LIFO
class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end
end

#First in First Out

class Queue
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.shift
  end

  def show
    @stack
  end
end

#Map
class Map
  def initialize
    @data = []
  end

  def check_exists?(key)
    lookup(key) == nil ? false : true
  end

  def assign(key, value)
    if check_exists?(key)
      @data[lookup(key)] = [key, value]
    else
      @data << [key, value]
    end
  end

  def lookup(key)
    @data.each_with_index do |pair, i|
      return i if pair.first == key
    end
    nil
  end

  def remove(key)
    place = lookup(key)
    @data.delete_at(place)
  end

  def show
    @data
  end
end
