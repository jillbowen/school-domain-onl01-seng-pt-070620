require 'pry'
class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if @roster[grade] == nil 
      @grade = grade
      @roster[grade] = [] 
      @roster[grade] << name
   else
      @roster[grade] << name 
    end
  end
  
  def grade(grade)
    @grade = @roster[grade]
  end
  
  def sort
    @roster.each do |grades, names|
      names.each do |name|
        name.sort_by{|first_name| first_name}
      end
    end
      
  end
  
end