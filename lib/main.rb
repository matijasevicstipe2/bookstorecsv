# frozen_string_literal: true

require_relative 'book_parser'

def main(year = nil)
  file_path = 'lib/data/books.csv'
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
    puts "/"
  end
end

# Example usage:
main
#main(2010)

