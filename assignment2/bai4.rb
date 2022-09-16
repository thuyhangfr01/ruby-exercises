puts "--- Bài tập 4 ---"

puts "Nhập 3 số nguyên: "
num1 = gets.to_i
num2 = gets.to_i
num3 = gets.to_i

if(num1 < num2) 
    tg = num1
    num1 = num2
    num2 = tg
end
if(num1 < num3) 
    tg = num1
    num1 = num3
    num3 = tg
end
if(num2 < num3) 
    tg = num2
    num2 = num3
    num3 = tg
end
    
puts("Danh sách 3 số theo thứ tự giảm dần: #{num1} > #{num2} > #{num3}")
