require 'rspec'
require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'exist' do
    gradebook = Gradebook.new("Mr.Sanchez")  
    expect(gradebook).to be_instance_of(Gradebook)
  end

  it 'has a name' do
    gradebook = Gradebook.new("Mr.Sanchez")  
    expect(gradebook.instructor).to eq("Mr.Sanchez")
  end

  it 'empty courses by default' do
    gradebook = Gradebook.new("Mr.Sanchez")  
    expect(gradebook.courses).to eq([])
  end
  
  it 'adds a course' do
    course = Course.new("Calculus", 2)
    gradebook = Gradebook.new("Mr.Sanchez") 
    expect(gradebook.courses).to eq([])
    gradebook.add_course(course)
    expect(gradebook.courses).to eq([course])
  end

  it 'list_all_students' do
    course = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})

    course.enroll(student1)
    course.enroll(student2) 
    
    gradebook = Gradebook.new("Mr.Sanchez") 
    expect(gradebook.courses).to eq([])
    gradebook.add_course(course)
    expect(gradebook.courses).to eq([course])
    expect(gradebook.list_all_students).to eq("Morgan", "Jordan")

  end


end