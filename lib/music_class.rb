class MusicClass

attr_reader :student_count

 def initialize
   @student_count = 0
   @student_names = []
   @student_ages = []
 end

 def add_student(student)
  @student_count += 1
  @student_names << student.name
  @student_ages << student.age
 end

 def student_list
  @student_names.join(", ")
 end

 def average_age
   @student_ages.sum/@student_count
 end

end
