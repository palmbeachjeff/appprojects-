# calls my_each twice on the array, printing all the numbers twice.
class Array 

    def my_each
        self.map { |ele|  p ele}
    end

     def my_select
         self.select {|ele| ele.to_i}
    end

end



a = [1, 2, 3]
a.my_select { |num| num > 1 } # => [2, 3]
a.my_select { |num| num == 4 } # => []