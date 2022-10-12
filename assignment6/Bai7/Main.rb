require_relative "GiaoVien"
require_relative "QuanLyGiaoVien"

quanLyGiaoVien_118 = QuanLyGiaoVien.new
giaoVienS_118 = []

while(true)
    puts("---- QUẢN LÝ GIÁO VIÊN ----")
    puts("1. Thêm mới thông tin giáo viên")
    puts("2. Xóa thông tin giáo viên theo mã giáo viên")
    puts("3. Hiển thị thông tin giáo viên")
    puts("4. Thoát khỏi chương trình")
    puts("-- Chọn công việc: ")
    cv_118 = gets.to_i

    case cv_118
        when 1
            puts("== 1. Thêm mới thông tin giáo viên ==")
            puts("*Nhập họ và tên: ")
            hoTen_118 = gets.to_s
            puts("*Nhập tuổi: ")
            tuoi_118 = gets.to_i
            puts("*Nhập quê quán: ")
            queQuan_118 = gets.to_s
            puts("*Nhập mã giáo viên: ")
            maGiaoVien_118 = gets.to_s
            while (quanLyGiaoVien_118.checkMaGiaoVien(giaoVienS_118, maGiaoVien_118) == true)
                puts("Mã giáo viên đã tồn tại! Nhập lại: ")
                maGiaoVien_118 = gets.to_s
            end
            puts("*Nhập lương cứng: ")
            lgCung_118 = gets.to_i
            puts("*Nhập lương thưởng: ")
            lgThuong_118 = gets.to_i
            puts("*Nhập tiền phạt: ")
            tienPhat_118 = gets.to_i
            lgThucLinh_118 = lgCung_118 + lgThuong_118 - tienPhat_118
            giaoVien_118 = GiaoVien.new(hoTen_118, tuoi_118, queQuan_118, maGiaoVien_118, lgCung_118, lgThuong_118, tienPhat_118, lgThucLinh_118)
            quanLyGiaoVien_118.themMoi(giaoVienS_118, giaoVien_118)
        when 2
            puts("== 2. Xóa thông tin giáo viên theo mã giáo viên ==")
            puts("*Nhập mã giáo viên muốn xóa: ")
            key_118 = gets.to_s
            quanLyGiaoVien_118.xoa(giaoVienS_118, key_118)
        when 3
            puts("== 3. Hiển thị thông tin giáo viên ==")
            if(giaoVienS_118.length != 0)
                puts("** Danh sách giáo viên **")
                quanLyGiaoVien_118.hienThiDanhSach(giaoVienS_118)
            else
                puts("Không có giáo viên nào!")
            end
        when 4
            puts("== 4. Thoát khỏi chương trình ==")
            puts("Hẹn gặp lại!")
            return
        else
            puts("Không hợp lệ!")
    end
end
