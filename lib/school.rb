# code here!
class School
    attr_accessor :name, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(student_name, grade)
        if @roster[grade] 
            @roster[grade] << student_name
        
        else
            @roster[grade] = [student_name]
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        sort_hash = {}
        @roster.sort.each  do |grade, students_name|
            sort_hash[grade] = (students_name.sort)
        end
        sort_hash
    end
end