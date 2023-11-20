# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/book_parser'
require 'minitest/autorun'
require_relative '../lib/book_parser'

class TestBookParser < Minitest::Test
  def setup
    @file_path = 'test/data/books_test.csv'
  end

  def test_extract_books_after_year_with_specific_year
    puts "Tests the extraction of books after a specific year from a valid CSV file."
    books = extract_books_after_year(@file_path, 2000)
    assert_equal 4, books.length
    assert_equal 'The Da Vinci Code', books.first[:title]
  end

  def test_extract_books_after_year_with_nil_year
    puts "Tests the behavior when a nil year is provided to extract_books_after_year."
    books = extract_books_after_year(@file_path, nil)
    assert_nil books
  end

  def test_extract_books_after_year_with_malformed_year
    puts "Tests the extraction of books after a wrong input for a year, should convert it to 0 and fetch all books."
    books = extract_books_after_year(@file_path, "fff")
    assert_equal 10, books.length
    assert_equal 'Frankenstein', books.first[:title]
  end
end
