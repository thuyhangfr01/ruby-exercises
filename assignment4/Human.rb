class Human
    attr_accessor :name
    attr_accessor :hair
    attr_accessor :height
    attr_accessor :weight
    attr_accessor :age
    attr_accessor :phone
    attr_accessor :email
    attr_accessor :nation

    def initialize(name, hair, weight, height, age, phone, email, nation)
        @name = name
        @hair= hair
        @height = height
        @weight = weight
        @age = age
        @phone = phone
        @email = email
        @nation = nation
    end
end