require_relative "TheMuon"
require_relative "QuanLyMuonSach"

quanLyMuonSach_118 = QuanLyMuonSach.new
theMuonS_118 = []

while(true)
    puts("---- QUẢN LÝ THẺ MƯỢN ----")
    puts("1. Thêm mới thẻ mượn")
    puts("2. Xóa thẻ mượn theo mã phiếu mượn")
    puts("3. Hiển thị danh sách phiếu mượn")
    puts("4. Thoát khỏi chương trình")
    puts("-- Chọn công việc: ")
    cv_118 = gets.to_i

    case cv_118
        when 1
            puts("== 1. Thêm mới thẻ mượn ==")
            puts("*Nhập họ tên người mượn: ")
            hoTen_118 = gets.to_s
            puts("*Nhập tuổi: ")
            tuoi_118 = gets.to_i
            puts("*Nhập lớp: ")
            lop_118 = gets.to_s
            puts("*Nhập mã phiếu mượn: ")
            maPhieuMuon_118 = gets.to_s
            while (quanLyMuonSach_118.checkMaPhieuMuon(theMuonS_118, maPhieuMuon_118) == true)
                puts("Mã phiếu mượn đã tồn tại! Nhập lại: ")
                maPhieuMuon_118 = gets.to_s
            end
            puts("*Nhập ngày mượn: ")
            ngayMuon_118 = gets.to_i
            puts("Nhập hạn trả: ")
            hanTra_118 = gets.to_i
            puts("Nhập số hiệu sách: ")
            soHieuSach_118 = gets.to_s
            theMuon_118 = TheMuon.new(hoTen_118, tuoi_118, lop_118, maPhieuMuon_118, ngayMuon_118, hanTra_118, soHieuSach_118)
            quanLyMuonSach_118.themMoi(theMuonS_118, theMuon_118)
        when 2
            puts("== 2. Xóa thẻ mượn theo mã phiếu mượn ==")
            puts("*Nhập mã phiếu mượn muốn xóa: ")
            key_118 = gets.to_s
            quanLyMuonSach_118.xoa(theMuonS_118, key_118)
        when 3
            puts("== 3. Hiển thị danh sách phiếu mượn ==")
            quanLyMuonSach_118.hienThiDanhSach(theMuonS_118)
        when 4
            puts("== 4. Thoát khỏi chương trình ==")
            puts("Hẹn gặp lại!")
            return
        else
            puts("Không hợp lệ!")

    end
end