class Student
    def initialize (name, id)
        @name = name
        @id = id
        @grades = []
    end
    
    def to_s
        @name + "\n" + 
        @id.to_s + "\n" +
        @grades.to_s
        
    end
    
    def addGrade(grade)
        @grades.push(grade)
    end
    
    def aveGrade()
end

s1 = Student.new( "fluffy", 12)
s1.addGrade(89)
puts(s1.to_s)

    