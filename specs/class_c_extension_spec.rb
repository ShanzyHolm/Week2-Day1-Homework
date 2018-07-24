require("minitest/autorun")
require("minitest/rg")
require_relative("../class_c_extension.rb")


class TestLIbrary < MiniTest::Test

def setup()

@library = Library.new

end