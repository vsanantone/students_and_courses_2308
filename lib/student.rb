class Student
  attr_reader :name, :age, :scores
  
  def initialize(data)
    @name   = data[:name]
    @age    = data[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    @scores.sum.to_f / @scores.length
  end
end
