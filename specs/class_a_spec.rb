require("minitest/autorun")
require("minitest/rg")
require_relative("../class_a.rb")

class TestClass_A < MiniTest::Test

def setup()

  @student = Student.new("Shannon", "G7")

end

def test_student_name()
  result = @student.student_name()
  assert_equal("Shannon",result)
end

def test_student_cohort()
  result = @student.cohort()
  assert_equal("G7", result)
end

def test_change_student_name()
  @student.student_name = "Shanzy"
  assert_equal("Shanzy", @student.student_name())
end

def test_student_talk()
  result = @student.say("I can talk")
  assert_equal("I can talk", result)
end

def test_students_fav_programming_language()
  result = @student.say_fav_language("Ruby")
  assert_equal("I love Ruby", result)
end




end
