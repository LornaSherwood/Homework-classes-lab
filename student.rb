class Student

def initialize (name, cohort, fav_language)
  @name = name
  @cohort = cohort
  @fav_language = fav_language
end

def get_name
return @name
end

def update_name(name)
  @name = name
end

def get_cohort
  return @cohort
end

def update_cohort(cohort)
  @cohort = cohort
end

def student_talk
  return "I can talk!"
end

def favourite_language
  return "I love #{@fav_language}!"
end








end