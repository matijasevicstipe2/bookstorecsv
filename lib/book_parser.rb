# frozen_string_literal: true

require 'csv'

def extract_books_after_year(file_path, year)
  books = []
  CSV.foreach(file_path, headers: true, quote_char: '"') do |row|
    title = row['title']
    author = row['author']
    publication_year = row['publication_year'].to_i
    if publication_year > year
      books << { title: title, author: author, publication_year: publication_year }
    end
  end
  books.sort_by! { |book| book[:publication_year] }

  books.each do |book|
    puts "#{book[:title]} (#{book[:publication_year]}) by #{book[:author]}"
  end
end

# Example usage:
file_path = 'lib/data/books.csv'
year = 2010
extract_books_after_year(file_path, year)
