# frozen_string_literal: true

require 'csv'

def extract_books_after_year(file_path, year)

  return if year.nil?
  unless year.is_a?(Integer)
    year = 0
  end

  books = []
  begin
    CSV.foreach(file_path, headers: true, quote_char: '"') do |row|
      title = row['title']
      author = row['author']
      publication_year = row['publication_year'].to_i

      if publication_year > year
        books << { title: title, author: author, publication_year: publication_year }
      end
    end

    raise 'No books found after the specified year' if books.empty?

    books.sort_by! { |book| book[:publication_year] }

    books.each do |book|
      puts "#{book[:title]} (#{book[:publication_year]}) by #{book[:author]}"
    end
    return books
  rescue Errno::ENOENT
    puts "Error: File '#{file_path}' not found."
  rescue CSV::MalformedCSVError
    puts "Error: Invalid CSV format in '#{file_path}'."
  rescue StandardError => e
    puts "Error: #{e.message}"
  end

end
