
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

p "--------"
sandwich = Stack.new
sandwich.push("bacon")
sandwich.push("lettuce")
sandwich.push("tomato")
p sandwich
p "--------"
sandwich.pop
p sandwich 
p "--------"
p sandwich.peek
p "--------"

