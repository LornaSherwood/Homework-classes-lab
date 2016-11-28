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