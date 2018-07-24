class Library

  attr_reader :books

  def initialize()
    @books = []
  end

  def add_book(book)
    @books.push(book)
  end

  def find_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def get_rental_details(title)
    book = find_by_title(title)
    return book[:rental_details]
  end

  def add_book_by_title(name_of_book)
    book = {
      title: name_of_book,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(book)
  end

end


# books = []
#
#   def initialize(book_title, rental_details, student_name, date_due)
#
#     @book_title = book_title
#     @rental_details = {student_name => date_due}
#       @student_name = student_name
#       @date = date_due
#
#   end
#
#
#   def book_title()
#     return @book_title
#   end
