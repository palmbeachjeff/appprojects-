
  class Stack
    def initialize
      # create a var to store stack here!
      @new_array = []
       
    end

    def push(el)
      # adds an element to the stack
      @new_array.push(el)
    end

    def pop
      # removes one element from the stack
      @new_array.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @new_array.last 
    end

    private

    attr_reader :underlying_array

  end

class Queue
  def initialize
    @array = []
  end

  def enqueue(el)
    @array.push(el)
  end

  def dequeue
    @array.shift
  end

  def peek
    @array.first
  end

  private 
  
  attr_reader :array 


end


class Map 
  def initialize
    @underlying_array = []
  end

  def set(key, value)
    pair_index = underlying_array.index {|pair| pair[0] == key }
    if pair_index
      underlying_array[pair_index][1] = value
    else
      underlying_array.push([key, value])
    end
    value
  end

  def get(key)
    #iterate through sub arrays and find the first value
    underlying_array.each {|pair| return pair[1] if pair[0] == key}
    nil  
  end

  def delete(key)
    value = get(key)
    underlying_array.reject {|pair| pair[0] == key}
    value
  end

  def show
    deep_dup(underlying_array)
  end

  private

  attr_reader :underlying_array

  def deep_dup(arr)
    arr.map {|el| el.is_a?(Array) ? deep_dup(el) : el }
  end

end