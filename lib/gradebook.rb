class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor     = instructor
    @courses        = []
  end

  def add_course(course)
    @courses << course
  end

   #gradebook.courses[0].students[0].name
   def list_all_students
    students = []
      @courses.each do |course|
        students << course.students.select { |student| student.name }
      end
      students
  end

end