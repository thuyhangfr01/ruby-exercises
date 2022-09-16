puts "--- Bài tập 2 ---"

puts "Nhập 3 cạnh: "
a = gets.to_i
b = gets.to_i
c = gets.to_i

def cal (x, y, z)
    per = x.to_i + y.to_i + z.to_i
    per2 = per/2.0
    area = Math.sqrt(per2*(per2-x)*(per2-y)*(per2-z))
    puts("- Chu vi: #{per}")
    puts("- Diện tích: #{area}")
end

if (a < b+c && b < a+c && c < a+b)
    if (a*a==b*b+c*c || b*b==a*a+c*c || c*c== a*a+b*b) then
        puts("Đây là 3 cạnh tam giác vuông")
        cal(a, b, c)
    elsif (a==b && b==c) then
        puts("Đây là 3 cạnh tam giác đều")
        cal(a, b, c)
    elsif (a==b || a==c || b==c) then
        puts("Đây là 3 cạnh tam giác cân")
        cal(a, b, c)
    elsif (a*a > b*b+c*c || b*b > a*a+c*c || c*c > a*a+b*b) then
        puts("Đây là 3 cạnh tam giác tù")
        cal(a, b, c)
    else
        puts("Đây là 3 cạnh tam giác nhọn")
        cal(a, b, c)
    end
else
    puts("3 cạnh a, b, c không phải là 3 cạnh tam giác!")
end