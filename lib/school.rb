# code here!
class School


    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new
    end
    
    def roster
        @roster
    end

    def add_student(name, grade)
        @name = name
        @grade = grade
        (@roster[grade] ||= []) << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted_roster = {}
        @roster.map do |grade, names|
            sorted_roster[grade] = names.sort
        end
        sorted_roster
    end


end
