require('minitest/autorun')
require_relative('../student.rb')

class StudentSpec < MiniTest::Test

  def test_can_create_student
    student = Student.new("Kristin", 9, "Ruby")
  end

  def test_can_get_name
    student = Student.new("Kristin", 9, "Ruby")
    assert_equal("Kristin", student.get_name)
  end

  def test_can_update_name
    student = Student.new("Kristin", 9, "Ruby")
    student.update_name("Blaise")
    assert_equal("Blaise", student.get_name)
  end

  def test_can_get_cohort
    student = Student.new("Kristin", 9, "Ruby")
    assert_equal(9, student.get_cohort)
  end

  def test_can_update_cohort
    student = Student.new("Rory", 8, "Python")
    student.update_cohort(9)
    assert_equal(9, student.get_cohort)
  end

  def test_student_can_talk
    student = Student.new("Rory", 8, "Python")
    assert_equal("I can talk!", student.student_talk)
  end

  def test_favourite_language
     student = Student.new("Rory", 8, "Python")
     assert_equal("I love Python!", student.favourite_language)
  end

end


class TeamSpec < MiniTest::Test

  def test_can_create_team
    team = Team.new("Huskies", ["Spot"], "Jim")
  end

  def test_can_get_team
    team = Team.new("Huskies", ["Spot"], "Jim")
    assert_equal("Huskies", team.get_team_name)
  end

  def test_can_get_member_names
    team = Team.new("Collies", ["Pip"], "Shepherd")
    assert_equal(["Pip"], team.get_member_names)
  end

  def test_can_get_coach_name
    team = Team.new("Collies", ["Pip"], "Shepherd")
    assert_equal("Shepherd", team.get_coach_name)
  end

  def test_can_update_coach_name
    team = Team.new("Huskies", ["Spot"], "Jim")
    team.update_coach_name("Musher")
    assert_equal("Musher", team.get_coach_name)
  end

  def test_add_member_names
    team = Team.new("Collies", ["Pip"], "Shepherd")
    team.add_member_names("Fly")
    assert_equal(["Pip", "Fly"], team.get_member_names)
  end

  def test_member_is_present
    team = Team.new("Collies", ["Pip", "Fly"], "Shepherd")
    assert_equal(true, team.member_is_present("Fly"))
  end

  def test_can_get_points
    team = Team.new("Collies", ["Pip", "Fly"], "Shepherd")
    assert_equal(0, team.get_points)
  end

  def test_win_or_lose
    team = Team.new("Collies", ["Pip", "Fly"], "Shepherd")
    team.win_or_lose("win", 10)
    assert_equal(10, team.get_points)
  end

end

# class LibrarySpec < MiniTest::Test

#   def test_can_create_library
#     library = Library.new({:lord_of_the_rings => {:student_name => "Jeff", :date => "01/12/16"}})
#   end

  
#   def test_list_details
#     library = Library.new({:lord_of_the_rings => {:student_name => "Jeff", :date => "01/12/16"}})
#     assert_equal("lord_of_the_rings, Jeff, 01/12/16", library.list_details)
#   end


#   def test_return_borrower #won't work without 3 arguments?
#     library = Library.new({:lord_of_the_rings => {:student_name => "Jeff", :date => "01/12/16"}})
#     assert_equal("Jeff: 01/12/16", library.return_borrower(:lord_of_the_rings))
#   end


# end



