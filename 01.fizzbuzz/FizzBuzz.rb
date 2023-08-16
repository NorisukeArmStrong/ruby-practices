#!/usr/bin/env ruby

number = 0
20.times do
  number += 1
    case 
    when number % 3 == 0 && number % 5 == 0
      puts "FizzBuzz"
    when number % 3 == 0
      puts "Fizz"
    when number % 5 == 0
      puts "Buzz"
    else
      puts number
    end
end
