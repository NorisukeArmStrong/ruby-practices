#!/usr/bin/env ruby

20.times do |number|
  number += 1
  if number % 3 == 0 && number % 5 == 0
    puts "FizzBuzz"
  else
  puts number
  end
end

puts "-------------"

(1..20).each do |num|
  puts (
    if(num % 3).zero? && (num % 5).zero?
      "FizzBuzz"
    elsif (num % 3).zero?
      "Fizz"
    elsif (num % 5).zero?
      "Buzz"
    else
      num
    end
  )
end
