# frozen_string_literal: true

require_relative 'book_parser'

def main(year = nil)
  file_path = 'data/books.csv'
  if year.nil?
    loop do
      print 'Enter the year (or "q" to quit): '
      input = gets.chomp.downcase

      break if input == 'q'

      year = input.to_i
      extract_books_after_year(file_path, year)
    end
  else
    extract_books_after_year(file_path, year)
  end
end

# Example usage:
if ARGV.empty?
  main
else
  year = ARGV[0].to_i
  main(year)
end

