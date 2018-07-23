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

def say(speech)
  return speech = "I can talk"
end

def say_fav_language(language)
  language = "Ruby"
  return "I love #{language}"
end

end
