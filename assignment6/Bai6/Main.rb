require_relative "HocSinh"
require_relative "QuanLyHocSinh"

quanLyHocSinh_118 = QuanLyHocSinh.new
hocSinhS_118 = []

while(true)
    puts("---- QUẢN LÝ HỌC SINH ----")
    puts("1. Thêm mới học sinh")
    puts("2. Hiển thị thông tin của tất cả học sinh")
    puts("3. Hiển thị thông tin của học sinh 20 tuổi")
    puts("4. Hiển thị số lượng các học sinh có tuổi là 23 và quê ở Đà Nẵng")
    puts("5. Thoát khỏi chương trình")
    puts("-- Chọn công việc: ")
    cv_118 = gets.to_i

    case cv_118
        when 1
            puts("== 1. Thêm mới học sinh ==")
            puts("*Nhập họ và tên: ")
            hoTen_118 = gets.to_s
            puts("*Nhập tuổi: ")
            tuoi_118 = gets.to_i
            puts("*Nhập quê quán: ")
            queQuan_118 = gets.to_s
            puts("*Nhập lớp: ")
            lop_118 = gets.to_s
            hocSinh_118 = HocSinh.new(hoTen_118, tuoi_118, queQuan_118, lop_118)
            quanLyHocSinh_118.themMoi(hocSinhS_118, hocSinh_118)
        when 2
            puts("== 2. Hiển thị thông tin của tất cả học sinh ==")
            if(hocSinhS_118.length != 0)
                puts("** Danh sách học sinh **")
                quanLyHocSinh_118.hienThiDanhSach(hocSinhS_118)
            else
                puts("Không có học sinh nào!")
            end
        when 3 
            puts("== 3. Hiển thị thông tin của học sinh 20 tuổi ==")
            quanLyHocSinh_118.hienThiHocSinh20t(hocSinhS_118)
        when 4
            puts("== 4. Hiển thị số lượng học sinh 23 tuổi và quê quán ở Đà Nẵng ==")
            quanLyHocSinh_118.hienThiHocSinh23t(hocSinhS_118)
        when 5
            puts("== 5. Thoát khỏi chương trình ==")
            puts("Hẹn gặp lại!")
            return
        else
            puts("Không hợp lệ!")
    end
end