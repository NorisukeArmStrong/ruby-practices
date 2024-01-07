#!/usr/bin/env ruby

shots = []
ARGV[0].split(',').each do |score|
  if score == 'X'
    shots << 10
    shots << 0
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
    if frames[i + 1][0] == 10 && i < 9
      point += (frames[i + 2]).sum
    else
      point += 0
    end
  elsif frame.sum == 10 && i < 9
    point += frames[i].sum + frames[i + 1].first
  else
    point += frame.sum
  end
end
