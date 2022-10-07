require_relative "KhuPho"
require_relative "Nguoi"
require_relative "HoGiaDinh"

khuPho_118 = KhuPho.new
thanhVienS_118 = []
hoGiaDinhS_118 = []

puts("== QUẢN LÝ CÁC HỘ DÂN CƯ ==")
puts("*Nhập số hộ dân: ")
n_118 = gets.to_i

for i_118 in 0..(n_118-1) do
    puts("-- Nhập thông tin hộ dân số #{i_118 + 1} --")
    puts("- Nhập số nhà: ")
    soNha_118 = gets.to_s
    puts("*Nhập số thành viên trong gia đình: ")
    tv_118 = gets.to_i
    for a_118 in 0..(tv_118-1) do
        puts("-- Nhập thông tin cá nhân thành viên #{a_118 + 1} --")
        puts("- Nhập họ và tên: ")
        hoTen_118 = gets.to_s
        puts("- Nhập tuổi: ")
        tuoi_118 = gets.to_i
        puts("- Nhập nghề nghiệp: ")
        ngheNghiep_118 = gets.to_s
        puts("- Nhập CMND: ")
        cmnd_118 = gets.to_s
        thanhVien_118 = Nguoi.new(hoTen_118, tuoi_118, ngheNghiep_118, cmnd_118)
        khuPho_118.themThanhVien(thanhVienS_118, thanhVien_118)
    end
    hoGiaDinh_118 = HoGiaDinh.new(soNha_118, thanhVienS_118)
    khuPho_118.themHoGiaDinh(hoGiaDinhS_118, hoGiaDinh_118)
end
khuPho_118.hienThiDanhSach(hoGiaDinhS_118, thanhVienS_118)