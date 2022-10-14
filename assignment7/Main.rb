require_relative "PhanSo"

puts("== CAO THỊ THÚY HẰNG - 1911505310118 ==")
puts("*Nhập phân số thứ nhất: ")
puts("-Nhập tử số: ")
tu1_118 = gets.to_i
puts("-Nhập mẫu số: ")
mau1_118 = gets.to_i
ps1_118 = PhanSo.new(tu1_118, mau1_118)

puts("*Nhập phân số thứ hai: ")
puts("-Nhập tử số: ")
tu2_118 = gets.to_i
puts("-Nhập mẫu số: ")
mau2_118 = gets.to_i
ps2_118 = PhanSo.new(tu2_118, mau2_118)

puts("---- Kết quả ----")
kqCong = ps1_118 + ps2_118
puts("==> Phép cộng: ")
kqCong.hienThi

kqTru = ps1_118 - ps2_118
puts("==> Phép trừ: ")
kqTru.hienThi

kqNhan = ps1_118 * ps2_118
puts("==> Phép nhân: ")
kqNhan.hienThi

kqChia = ps1_118 / ps2_118
puts("==> Phép chia: ")
kqChia.hienThi