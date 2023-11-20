# Book Parser

## Description
This program parses a CSV file containing a list of books and extracts titles published after a certain year. It consists of two main files: `main.rb` and `book_parser.rb`

## Prerequisites
- Ruby installed
- CSV file with book details

## How to Run
1. Clone the repository.
2. Ensure you have Ruby installed.
3. Open a terminal and navigate to the lib folder inside your project directory.
4. Run `ruby main.rb` to interactively enter the year or `ruby main.rb <year>` to directly parse books published after a specific year.

## Running Tests
The project uses Minitest for unit and integration testing.

To run the tests:
1. Ensure that you are located within root directory within your project using the terminal.
2. Run `ruby test/<test_file_name>.rb` to execute a specific test file.

## File Descriptions

### `main.rb`
This file provides a user interface to interactively enter the publication year or directly parse books after a specific year.

### `book_parser.rb`
Responsible for parsing the CSV file containing book details and extracting titles published after a given year.

## Usage Examples

### `main.rb`
```bash
# Example directory --> PS C:\Users\stipe\RubymineProjects\bookstorecsv\lib>
ruby main.rb
# Follow the prompts to enter the year or 'q' to quit.

ruby main.rb 2010
# Parses books published after the year 2010.
```

### `book_parser_test.rb`
```bash
# Example directory --> PS C:\Users\stipe\RubymineProjects\bookstorecsv>
ruby test/book_parser_test.rb
```
