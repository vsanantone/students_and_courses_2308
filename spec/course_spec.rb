require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'exist' do
    course = Course.new("Calculus", 2)  
    expect(course).to be_instance_of(Course)
  end

  it 'has readable attributes' do
    course = Course.new("Calculus", 2)  
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
    expect(course.students).to eq([])
  end
  
  it 'students can register' do
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course = Course.new("Calculus", 2)  
    
    expect(course.full?).to eq(false)
    
    course.enroll(student1)
    course.enroll(student2)  

    expect(course.students).to eq([student1, student2])
    expect(course.full?).to eq(true)
  end

  it 'list all students in a course' do
    
  end


end
