def range(min, max)
    return [] if max <= min
    [min] + range(min + 1, max)
end

def sum_of(arr)
    return 0 if arr.length == 0
    arr.pop + sum_of(arr)
end

def sum_of(arr)
    arr.inject {|sum, n| sum + n}
end

def exp1(base, power)
    power == 0 ? 1 : base * exp1(base, power - 1)
end

def exp2(base, power)
    return 1 if power == 0

    half = exp2(base, power / 2)

    if power.even?
        half * half
    else
        base * half * half 
    end
end

class Array 

    def deep_dup
        map {|x| x.deep_dup}
    end
end

def fibonacci(n) 
    return [] if n == 0
    return [1] if n <= 2

    fibs = [0, 1]

    while fibs.count < n
        fibs << fibs[-2] + fibs[-1]
    end
    fibs 
end

def fibs_rec(n)
    if n <= 2
    [0, 1].take(n)
    else 
        fibs = fibs_rec(n - 1)
        fibs << fibs[-2] + fibs[-1]
    end
end

def bsearch(nums, target)
    return nil if nums.include?(target) == false
    
    probe_index = nums.length / 2
    case target <=> nums[probe_index]
    when -1 
    bsearch(nums.take(probe_index), target)
    when 0
        probe_index
    when 1
        sub_answer = bsearch(nums.drop(probe_index + 1), target)
        sub_answer.nil? ? nil : (probe_index + 1) + sub_answer
    end
end

class Array
  def merge_sort
    return self if count < 2

    middle = count / 2

    left, right = self.take(middle), self.drop(middle)
    sorted_left, sorted_right = left.merge_sort, right.merge_sort

    merge(sorted_left, sorted_right)
  end

  def merge(left, right)
    merged_array = []
    until left.empty? || right.empty?
      merged_array << (left.first < right.first) ? left.shift : right.shift
    end

    merged_array + left + right
  end
end

class Array
    def subsets(arr)
        return [[]] if empty?
        subs = take(count - 1).subsets
        subs.concat(subs.map {|sub| sub + [last] })
    end
end

class Array
    def permutations(array)
        return [array] if array.length <=1
    
        first = array.shift
        perms = permutations(array)
        total_permutations = []

        perms.each do |perm|
            (0..perm.lenght).each do |i|
                total_permutations << perm[0...i] + [first] + perm[i..-1]
            end
        end
        total_permutations
    end
end




# p [23, 43, 16, 834, 103].merge_sort
# p [21, 3, 43, 25, 9].merge_sort
# p [41, 29, 43, 94, 5, 6].merge_sort
# p [14, 82, 3, 44, 5, 6].merge_sort
# p [21, 245, 33, 4, 45, 7].merge_sort




# MAX_STACK_SIZE = 200
# tracer = proc do |event|
#   if event == 'call' && caller_locations.length > MAX_STACK_SIZE
#     fail "Probable Stack Overflow"
#   end
# end
# set_trace_func(tracer)


# def sum_to(n)
#     return nil if n < 1
#     return 1 if n == 1
#     n + sum_to(n - 1)
# end


# def add_numbers(nums_array)
#     return nil if nums_array.length <= 0
#     return nums_array[0] if nums_array.length == 1 
#     first_ele = nums_array[0]
#     rest_of_ele = nums_array[1..-1].inject {|sum, n| sum + n}
#     first_ele + rest_of_ele
# end


# def gamma_fnc(num)
#     return nil if num < 1
#     return 1 if num == 1

#     (num - 1) * gamma_fnc(num - 1)
# end

# def ice_cream_shop(flavors, favorite)
#     return false if flavors.empty?
#     return true if flavors.last == favorite

#     ice_cream_shop(flavors[0...-1], favorite)
# end

# def reverse(string)
#     return "" if string.empty?
#     reverse(string[1..-1]) + string[0]
# end

# def add(arr)
#     return arr[0] if arr.length <= 1

#     arr.pop + add(arr)
# end

# p add([1,2,3,4]) # => returns 10
# p add([3]) # => returns 3
# p add([-80,34,7]) # => returns -39
# p add([]) # => returns nil

