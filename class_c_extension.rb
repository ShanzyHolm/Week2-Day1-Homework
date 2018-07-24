class Library

books = []

  def initialize(book_title, rental_details, student_name, date_due)

    @book_title = book_title
    @rental_details = {student_name => date_due}
      @student_name = student_name
      @date = date_due

  end


  def book_title()
    return @book_title
  end

end
