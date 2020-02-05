class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] << name
  end

  def grade(g)
    @roster[g]
  end

  def sort
    sorted = {}
    @roster.keys.each { |key| sorted[key] = @roster[key].sort }
    sorted
  end
end
