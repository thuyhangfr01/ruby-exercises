require_relative "Student"

def getStudents(students)
    for index in 0..(students.length()-1) do
        puts("Student #{index+1}: #{students[index].name} - #{students[index].hair} - #{students[index].height} - #{students[index].weight} - #{students[index].age} - averageGrades: #{students[index].avgGrades}")
    end
end

student1 = Student.new("Cao Thi Thuy Hang", "black", 158, 48, 21, "0765700336", "thuyhangfr01@gmail.com", "VietNam", 10, 10, 10)
student2 = Student.new("Nguyen Van Minh", "black", 178, 54, 21, "0987789999", "vanminh@gmail.com", "VietNam", 6.5, 10, 9)
student3 = Student.new("Le Dinh Vu", "black", 156, 55, 21, "0777323823", "ledinhvu@gmail.com", "VietNam", 7.5, 8, 8.5)
student4 = Student.new("Nguyen Lan Anh", "brown", 175, 60, 21, "0987789998", "lananh123@gmail.com", "VietNam", 9.5, 8, 10)

students = []
students.push(student1)
students.push(student2)
students.push(student3)
students.push(student4)

puts "-- Before sort: "
getStudents(students)

puts "-- After sort:"
students_sort_descending = students.sort_by {|student| -student.avgGrades}
getStudents(students_sort_descending)

