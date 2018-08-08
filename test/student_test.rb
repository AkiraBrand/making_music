require 'minitest/autorun'
require 'minitest/pride'
#we can now get objects from BOTH these classes
require './lib/instrument.rb'
require './lib/student.rb'


class StudentTest < Minitest::Test

  def test_student_exists
    student = Student.new("Anna", 12)
    assert_instance_of Student, student
  end

 def test_it_has_a_name
   student = Student.new("Anna", 12)
   assert_equal "Anna", student.name
 end

 def test_it_has_an_age
   student = Student.new("Anna", 12)
   assert_equal 12, student.age
 end

 def test_its_enrolled
   student = Student.new("Anna", 12)
   assert_equal true, student.enrolled?
 end

 def test_student_starts_with_no_instrument
   student = Student.new("Anna", 12)
   assert_equal nil, student.instrument
 end

 def test_student_gets_an_instrument
   skip
   student = Student.new("Anna", 12)
   instrument = Instrument.new("piano")
   student.assign_instrument(instrument)
   assert_equal "piano", student.assign_instrument("piano")
 end

 def test_students_instrument_changed
   #we need a student and an instrument object
   student = Student.new("Anna", 12)
   instrument = Instrument.new("piano")
   #we need to call the assign instrument method on the student object
   #which takes the instrument object from the instrument class
   #and passes it in as an argument to this method
   student.assign_instrument(instrument)
   assert_equal "piano", student.instrument
 end

 def test_can_assign_multiple_instruments_to_students
   instrument_1 = Instrument.new("Piano")
   instrument_2 = Instrument.new("Trumpet")
   instrument_3 = Instrument.new("Tambourine")

   student_1 = Student.new("Anna", 12)
   student_2 = Student.new("Charlie", 14)
   student_3 = Student.new("Jeff", 13)

   student_1.assign_instrument(instrument_1)
   student_2.assign_instrument(instrument_2)
   student_3.assign_instrument(instrument_3)

   assert_equal "Piano", student_1.instrument
   assert_equal "Trumpet", student_2.instrument
   assert_equal "Tambourine", student_3.instrument
 end


end
