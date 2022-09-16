puts "--- Bài tập 1 ---"

array = []
print "Bạn muốn thêm bao nhiêu số vào mảng: "
n = gets.to_i
for i in (1..n) do
    print("Nhập số thứ #{i}: ")
    i = gets.to_i
    array.push(i)
end
max = array.max()
min = array.min()
avg = array.sum / array.size.to_f
puts "Số lớn nhất: #{max}"
puts "Số nhỏ nhất: #{min}"
puts "Giá trị trung bình: #{avg}"