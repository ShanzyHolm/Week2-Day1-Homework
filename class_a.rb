class Student

  attr_accessor :student_name, :cohort

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

# GETTERS
  # def student_name()
  #   return @student_name
  # end
  #
  # def cohort()
  #   return @cohort
  # end

def says(speech)
  return speech = "I can talk"
end


end
