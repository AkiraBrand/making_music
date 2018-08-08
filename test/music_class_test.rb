require 'minitest/autorun'
require 'minitest/pride'
require './lib/instrument.rb'
require './lib/student.rb'
require './lib/music_class.rb'

class MusicClassTest < Minitest::Test

def setup
  @mc = MusicClass.new
end

 def test_it_exists
   assert_instance_of MusicClass, @mc
 end

 def test_class_starts_with_zero_students
   assert_equal 0, @mc.student_count
 end

 def test_it_can_add_students

   student_1 = Student.new("Anna", 12)
   student_2 = Student.new("Charlie", 14)
   student_3 = Student.new("Jeff", 13)

   @mc.add_student(student_1)
   @mc.add_student(student_2)
   @mc.add_student(student_3)

   assert_equal 3, @mc.student_count
 end

 def test_the_list_of_students
   student_1 = Student.new("Anna", 12)
   student_2 = Student.new("Charlie", 14)
   student_3 = Student.new("Jeff", 13)

   @mc.add_student(student_1)
   @mc.add_student(student_2)
   @mc.add_student(student_3)

  solution = "Anna, Charlie, Jeff"
  assert_equal solution, @mc.student_list
 end

 def test_can_calculate_the_average_age_of_students

   student_1 = Student.new("Anna", 12)
   student_2 = Student.new("Charlie", 14)
   student_3 = Student.new("Jeff", 13)

   @mc.add_student(student_1)
   @mc.add_student(student_2)
   @mc.add_student(student_3)

   assert_equal 13, @mc.average_age

 end

end
