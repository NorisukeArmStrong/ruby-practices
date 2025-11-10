#! /usr/bin/env ruby
# frozen_string_literal: true

files = []
def generate_directry(files)
  Dir.glob("*").each do |file|
  files << file
  end
end
