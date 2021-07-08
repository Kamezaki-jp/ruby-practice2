class Lotteries
  def is_adjacent(my_number, w_inning_number)
    my_number == w_inning_number + 1 || my_number == w_inning_number -1
  end

  def second_number(number)
    number % 10000
  end

  def third_number(number)
    number % 1000
  end

  def lottery(w_inning_number, counts)
    my_numbers = counts.times.map {|x| 
      puts "宝くじの番号は？"
      gets.strip.chomp.to_i
    }
    
    my_numbers.each do |my_number|
      if my_number == w_inning_number
        puts "first"
      elsif is_adjacent(my_number, w_inning_number)
        puts "adjacent"
      elsif second_number(my_number) == second_number(w_inning_number)
        puts "second"
      elsif third_number(my_number) == third_number(w_inning_number)
        puts "third"
      else
        puts "blank"
      end
    end
  end
end

puts "当選番号は？"
w_inning_number = gets.to_i

puts "枚数は？"
counts = gets.to_i

lotteries = Lotteries.new
lotteries.lottery(w_inning_number, counts)