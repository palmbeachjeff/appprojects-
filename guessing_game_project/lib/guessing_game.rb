class GuessingGame
    def initialize(min, max)
        @min = min
        @max = max
        @secret_num = rand(min..max)
        @num_attempts = 0
        @game_over = false
    end 

    def num_attempts
        return @num_attempts
    end

    def game_over?
        return @game_over
    end
    
    def check_num(num)
        if num == @secret_num
            @game_over = true
            print "you win"
        elsif num > @secret_num
            print "too big"
        else num < @secret_num
            print "too small"
        end
        @num_attempts += 1
    end

    def ask_user
        print "enter a number"
        input = gets
        number = input.chomp.to_i  
        self.check_num(number)
    end

end
