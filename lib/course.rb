class Course
  attr_reader :name, :capacity, :students, :full

  def initialize(name, capacity)
    @name     = name
    @capacity = capacity
    @students = []
    @full     = false
  end

  def full?
    if @students.length == 2
      @full = true
    end
    @full
  end
 
  def enroll(student)
    @students << student
  end

end
