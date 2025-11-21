#! /usr/bin/env ruby
# frozen_string_literal: true

def generate_directry
  files = []
  Dir.glob("*").each do |file|
  files << file
  end
end
directories = generate_directry

def sorted_matrix(directories)
  max_columns = 3
  columns = directories.size % max_columns == 0 ? directories.size / max_columns : directories.size / max_columns + 1
  matrix = []
  directories.each_slice(columns) do |directory|
    matrix << directory
    if directory.size != columns
      ((directory.size)..(columns - 1)).each { directory << nil }
    end
  end
  matrix
end
matrix = sorted_matrix(directories)
