require_relative "KhuPho"
require_relative "Nguoi"
require_relative "HoGiaDinh"

hoGiaDinhS_118 = []

puts("== QUẢN LÝ CÁC HỘ DÂN CƯ ==")
puts("*Nhập số hộ dân: ")
n_118 = gets.to_i

for i_118 in 1..n_118 do
    puts("-- Nhập thông tin hộ dân số #{i_118} --")
    puts("- Nhập số nhà: ")
    soNha_118 = gets.to_s
    puts("*Nhập số thành viên trong gia đình: ")
    tv_118 = gets.to_i

    dsThanhVien = []
    for a_118 in 1..tv_118 do
        puts("-- Nhập thông tin cá nhân thành viên #{a_118} --")
        puts("- Nhập họ và tên: ")
        hoTen_118 = gets.to_s
        puts("- Nhập tuổi: ")
        tuoi_118 = gets.to_i
        puts("- Nhập nghề nghiệp: ")
        ngheNghiep_118 = gets.to_s
        puts("- Nhập CMND: ")
        cmnd_118 = gets.to_s
        thanhVien_118 = Nguoi.new(hoTen_118, tuoi_118, ngheNghiep_118, cmnd_118)
        dsThanhVien.push(thanhVien_118)
    end
    hoGiaDinh_118 = HoGiaDinh.new(soNha_118, dsThanhVien)
    khuPho_118 = KhuPho.new(hoGiaDinhS_118)
    khuPho_118.themMoi(hoGiaDinhS_118, hoGiaDinh_118)
end
khuPho_118.hienThiThongTin