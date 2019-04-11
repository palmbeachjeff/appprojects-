class Stack
  class Stack
    def initialize
      # create a var to store stack here!
      @stack = []
       
    end

    def push(el)
      # adds an element to the stack
      el << stack 
      stack
    end

    def pop
      # removes one element from the stack
      @stack.pop
      return @stack
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack.first 
    end
  end
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

