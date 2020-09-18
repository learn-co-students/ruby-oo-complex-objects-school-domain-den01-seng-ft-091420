require 'pry'

class School    
attr_reader :name
attr_accessor :roster

    def initialize name
            @name = name
            @roster = {}

    end

    def add_student (student_name, grade) 
        grade_roster = @roster[grade] ||= []
        grade_roster << student_name        

    end

    def grade(grade)
        @roster[grade]
    end 

    def sort
        @roster.each do |_, names|
            names.sort!
        end     
    end    
    
end


#  school = School.new("tvhs")

#  p school.add_student("kelly", 9)