# code here!
class School
  attr_accessor :school, :roster, :array

  def initialize(school)
    @school = school
    @roster = {}
    @array = []

  end

  def roster
    @roster
  end

  def add_student(students, grade)
    #@array << key # [9, 10, 7]
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << students
    else
      @roster[grade] << students
    end
  end

  def grade(grade)
    @roster.values_at(grade).flatten
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end
