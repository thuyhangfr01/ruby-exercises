require_relative "KhachSan"
require_relative "Nguoi"
require_relative "PhongA"
require_relative "PhongB"
require_relative "PhongC"

nguoiS_118 = []

while (true)
    puts("---- QUẢN LÝ KHÁCH SẠN ----")
    puts("1. Thêm mới khách hàng")
    puts("2. Hiển thị thông tin khách hàng")
    puts("3. Xóa khách hàng theo chứng minh nhân dân")
    puts("4. Tính tiền thuê phòng theo chứng minh nhân dân")
    puts("5. Thoát khỏi chương trình")
    puts("-- Chọn công việc: ")
    cv_118 = gets.to_i

    case cv_118
        when 1
            puts("== 1. Thêm mới khách hàng ==")
            puts("*Nhập họ và tên: ")
            hoTen_118 = gets.to_s
            puts("*Nhập tuổi: ")
            tuoi_118 = gets.to_i
            puts("*Nhập CMND: ")
            cmnd_118 = gets
            puts("*Nhập loại phòng: ")
            puts("1. Phòng loại A")
            puts("2. Phòng loại B")
            puts("3. Phòng loại C")
            a_118 = gets.to_i
            case a_118
                when 1
                    phong_118 = PhongA.new()
                when 2
                    phong_118 = PhongB.new()
                when 3
                    phong_118 = PhongC.new()
                else
                    puts("Không hợp lệ!")
            end
            puts("*Nhập số ngày thuê: ")
            soNgayThue_118 = gets.to_i
            nguoi_118 = Nguoi.new(hoTen_118, tuoi_118, cmnd_118, phong_118, soNgayThue_118)
            khachSan_118 = KhachSan.new(nguoiS_118)
            khachSan_118.themMoi(nguoiS_118, nguoi_118)
        when 2
            puts("== 2. Hiển thị thông tin khách hàng ==")
            khachSan_118.hienThiDanhSach()
        when 3
            puts("== 3. Xóa khách hàng theo chứng minh nhân dân ==")
            puts("*Nhập CMND của khách hàng: ")
            key_118 = gets
            khachSan_118.xoa(nguoiS_118, key_118)
        when 4
            puts("== 4. Tính tiền thuê phòng theo chứng minh nhân dân ==")
            puts("*Nhập CMND của khách hàng: ")
            key_118 = gets
            khachSan_118.tinhTienPhong(nguoiS_118, key_118)
        when 5
            puts("== 5. Thoát khỏi chương trình ==")
            return
        else
            puts("Không hợp lệ!")
    end
end