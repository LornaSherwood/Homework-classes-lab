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

class Team

  def initialize(team_name, member_names, coach_name)
    @team_name = team_name
    @member_names = member_names
    @coach_name = coach_name
    @points = 0
  end

  

  def get_team_name
    return @team_name
  end

  def get_member_names
    return @member_names
  end

  def get_coach_name
    return @coach_name
  end

  def update_coach_name(coach_name)
    @coach_name = coach_name
  end

  def add_member_names(member_name)
    @member_names << member_name
  end

  def member_is_present(member_name)
    if @member_names.include? member_name
      return true
    end
  end

  def get_points
    return @points
  end

  def win_or_lose(outcome, points)
    @points += points if outcome = "win"
  end

end


# class Library

#   def initialize(library) #why can't add 3 arguments?
#     @library = library
#   end

#   def list_details
#     return "@library.keys, #{@library[:lord_of_the_rings][:student_name]}, #{@library[:lord_of_the_rings][:date]}"
#   end

#   def return_borrower(book)
#     return "#{@library[:lord_of_the_rings][:student_name]}, #{@library[:lord_of_the_rings][:date]}"
#   end




# end