require("minitest/autorun")
require("minitest/rg")
require_relative("../class_c_extension.rb")


class TestLibrary < MiniTest::Test

  def setup()

    @book_1 = Library.new("New York Trilogy", {},"Mickey", "04/12/2018")
    # @book_2 = Book.new("Hop on Pop", "Minnie", "22/01/2018")
    # @book_3 = Book.new("Introduction to Ruby", "Donald", "15/12/2018")

    # @library = Library.new([@book_1])
      # , @book_2, @book_3])

  end

  def test_get_books()
    result = @library.book_title
    assert_equal(["New York Trilogy"], result)
  end
  # "Hop on Pop" "Introduction to Ruby"


end
