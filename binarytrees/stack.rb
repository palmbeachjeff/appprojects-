
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


