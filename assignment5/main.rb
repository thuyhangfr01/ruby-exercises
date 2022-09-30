require_relative "CanBo"
require_relative "CongNhan"
require_relative "KySu"
require_relative "NhanVien"
require_relative "QuanLyCanBo"

quanLyCanBo118 = QuanLyCanBo.new
canBo_s118 = []

while(true)
    puts("---- QUẢN LÝ CÁN BỘ ----")
    puts("1. Thêm mới cán bộ")
    puts("2. Tìm kiếm theo họ tên")
    puts("3. Hiện thị thông tin về danh sách các cán bộ")
    puts("4. Thoát khỏi chương trình")
    puts("-- Chọn công việc: ")
    cv118 = gets.to_i

    case cv118
        when 1
            puts(" == 1. Thêm mới cán bộ == ")
            puts("1. Công nhân")
            puts("2. Kỹ sư")
            puts("3. Nhân viên")
            puts("-- Chọn chức vụ cán bộ muốn thêm: ")
            n118 = gets.to_i

            case n118
                when 1
                    puts("== Thêm mới công nhân ==")
                    puts("Nhập họ tên: ")
                    hoTen118 = gets.to_s
                    puts("Nhập tuổi: ")
                    tuoi118 = gets.to_i
                    puts("Nhập giới tính: (Nữ - Nam - Khác)")
                    gioiTinh118 = gets.to_s
                    puts("Nhập địa chỉ: ")
                    diaChi118 = gets.to_s
                    puts("Nhập số bậc (Từ 1 - 10): ")
                    bac118 = gets.to_i
                    congNhan118 = CongNhan.new(hoTen118, tuoi118, gioiTinh118, diaChi118, bac118)
                    quanLyCanBo118.themMoi(canBo_s118, congNhan118)
                when 2
                    puts("== Thêm mới kỹ sư ==")
                    puts("Nhập họ tên: ")
                    hoTen118 = gets.to_s
                    puts("Nhập tuổi: ")
                    tuoi118 = gets.to_i
                    puts("Nhập giới tính: (Nữ - Nam - Khác)")
                    gioiTinh118 = gets.to_s
                    puts("Nhập địa chỉ: ")
                    diaChi118 = gets.to_s
                    puts("Nhập ngành đào tạo: ")
                    nganhDaoTao118 = gets.to_s
                    kySu118 = KySu.new(hoTen118, tuoi118, gioiTinh118, diaChi118, nganhDaoTao118)
                    quanLyCanBo118.themMoi(canBo_s118, kySu118)
                when 3
                    puts("== Thêm mới nhân viên ==")
                    puts("Nhập họ tên: ")
                    hoTen118 = gets.to_s
                    puts("Nhập tuổi: ")
                    tuoi118 = gets.to_i
                    puts("Nhập giới tính: (Nữ - Nam - Khác)")
                    gioiTinh118 = gets.to_s
                    puts("Nhập địa chỉ: ")
                    diaChi118 = gets.to_s
                    puts("Nhập công việc: ")
                    congViec118 = gets.to_s
                    nhanVien118 = NhanVien.new(hoTen118, tuoi118, gioiTinh118, diaChi118, congViec118)
                    quanLyCanBo118.themMoi(canBo_s118, nhanVien118)
            end
        
        when 2
            puts("== 2. Tìm kiếm theo họ tên == ")
            puts("Nhập tên muốn tìm: ")
            ten118 = gets.to_s
            quanLyCanBo118.timKiemTheoTen(ten118, canBo_s118)
        when 3
            puts("== 3. Hiển thị thông tin về danh sách các cán bộ == ") 
            quanLyCanBo118.hienThiDanhSach(canBo_s118)
        when 4
            puts(" == 4. Thoát khỏi công việc == ")
            puts("Hẹn gặp lại!")
            return
    end
end