#! /usr/bin/env ruby
# frozen_string_literal: true

files = []
def to_array(array)
  Dir.glob("*").each do |file|
  array << file
  end
end
