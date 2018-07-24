require("minitest/autorun")
require("minitest/rg")
require_relative("../class_c_extension.rb")


class TestLibrary < MiniTest::Test

  def setup()

     @book =
     {
        title:  "The_New_York_Trilogy",
        rental_details: {
          student_name: "Mickey",
          date: "01/12/2018"
        }
     }

     # @book2 =
     # {
     #    title:  "Introduction to Ruby",
     #    rental_details: {
     #      student_name: "Donald",
     #      date: "15/12/2018"
     #    }
     # }

     @library = Library.new()
     @library.add_book(@book)

  end

  def test_add_books()
    book2 =
    {
      title: "Hop_on_Pop",
      rental_details: {
        student_name: "Minnie",
        date: "22/01/2018"
    }
  }

    @library.add_book(book2)
    result = @library.books
    assert_equal(2, result.size)

  end

  def test_get_book_by_title()
    result = @library.find_by_title("The_New_York_Trilogy")
    assert_equal(@book, result)
  end


  def test_get_rental_details_by_title()
    result = @library.get_rental_details("The_New_York_Trilogy")
    assert_equal(@book[:rental_details], result)
  end

  def test_add_book_without_rental_details()
    @library.add_book_by_title("Introduction to Ruby")

    expected_book = {
      title: "Introduction to Ruby",
      rental_details: {
        student_name: "",
        date: ""
      }
    }

    actual_book = @library.find_by_title("Introduction to Ruby")

    assert_equal(expected_book, actual_book)
  end

# ARRANGE, ACT, ASSERT

  def test_change_rental_details
    @library.change_rental_details("The_New_York_Trilogy", "Bob", "25/12/2018")
    result = @library.find_by_title("The_New_York_Trilogy")

    expected_book = {
      title:  "The_New_York_Trilogy",
      rental_details: {
        student_name: "Bob",
        date: "25/12/2018"
      }
    }

    assert_equal(expected_book, result)
  end

#     # @book_2 = Book.new()
#     # @book_3 = Book.new("Introduction to Ruby", "Donald", "15/12/2018")
#
#     # @library = Library.new([@book_1])
#       # , @book_2, @book_3])
#
#   end
#
#   def test_get_books()
#     result = @library.book_title
#     assert_equal(["New York Trilogy"], result)
#   end
#   # "Hop on Pop" "Introduction to Ruby"
#
#
end
