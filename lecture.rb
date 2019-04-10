arr = [2, 3, 1, 7]

result = arr.inject(100) { |accum, el| accum * el}

p result

# def say_hello(first_name, last_name)
# p first_name
# p last_name
# end

# arr = ["jeff", "winkler"]
# say_hello(*arr)

# def print_h(name, hash)
#     p name
#     p hash
# end

# print_h("kati", "city" => "ny", "color"=>"red")


# def personalize_hi(person_1, person_2 = nil)
#     if person_2.nil?
#         p "hi " + person_1 + ".  You seem lonely"
#     else
#         p "hi " + person_1 + " and " + person_2 + "."
#     end 
# end

# personalize_hi("jeff", "kati")
# personalize_hi("joe")

# bootcamp_1 = {:name=>"app academy", :color=> "red"}

# p bootcamp_1

# bootcamp_2 = {name:"map academy", color: "blue"}

# p bootcamp_2




# p [[1,2,3], [4,5]].flatten

# p [4, 6, 5, 7].count { |num| num.even? }

# sym = :hello
# str = "hello"


# p "hello".object_id
# p "hello".object_id
# p "hello".object_id

# p :hello.object_id
# p :hello.object_id
# p :hello.object_id



