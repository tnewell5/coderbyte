class Student
    def initialize (name, id)
        @name = name
        @ide = id
        @grades = []
    end
    
    def to_s
        @name
    end
end

s1 = Student.new( fluffy, 35)
puts(s1.to_s)

    