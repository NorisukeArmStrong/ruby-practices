#!/usr/bin/env ruby
# frozen_string_literal: true

shots = []
STRIKE_1 = 10
STRIKE_2 = 0
ARGV[0].split(',').each do |score|
  if score == 'X'
    shots << STRIKE_1
    shots << STRIKE_2
  else
    shots << score.to_i
  end
end

frames = []
shots.each_slice(2) do |shot|
  frames << shot
end

point = 0
frames.each_with_index do |frame, i|
  if frame[0] == 10 && i < 9
    point += (frames[i] + frames[i + 1]).sum
    point += if frames[i + 1][0] == 10 && i < 9 && frames[i + 2][0] != 10
               frames[i + 2].first
             elsif frames[i + 1][0] == 10 && i < 9
               (frames[i + 2]).sum
             else
               0
             end
  elsif frame.sum == 10 && i < 9
    point += frames[i].sum + frames[i + 1].first
  else
    point += frame.sum
  end
end
puts point
