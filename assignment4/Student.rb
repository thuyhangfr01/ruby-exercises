require_relative "Human"

class Student < Human
    attr_accessor :mathGrade
    attr_accessor :physicalGrade
    attr_accessor :chemistryGrade

    def initialize(name, hair, height, weight, age, phone, email, nation, mathGrade, physicalGrade, chemistryGrade)
        super(name, hair, height, weight, age, phone, email, nation)
        @mathGrade = mathGrade
        @physicalGrade = physicalGrade
        @chemistryGrade = chemistryGrade
    end 

    def avgGrades
        avg = (@mathGrade + physicalGrade + chemistryGrade)/3.0
        avg.round(2)
    end
end
