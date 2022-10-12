require_relative "KhoiA"
require_relative "KhoiB"
require_relative "KhoiC"
require_relative "TuyenSinh"

tuyenSinh_118 = TuyenSinh.new
thiSinhS_118 = []

while (true)
    puts("---- TUYỂN SINH ĐẠI HỌC ----")
    puts("1. Thêm mới thí sinh")
    puts("2. Hiển thị thông tin của thí sinh và khối thi của thí sinh")
    puts("3. Tìm kiếm theo số báo danh")
    puts("4. Thoát khỏi chương trình")
    puts("-- Chọn công việc: ")
    cv_118 = gets.to_i

    case cv_118
        when 1
            puts(" == 1. Thêm mới thí sinh == ")
            puts("1  Khối A")
            puts("2. Khối B")
            puts("3. Khối C")
            puts("-- Chọn loại khối thi của thí sinh: ")
            khoiThi_118 = gets.to_i
            case khoiThi_118
                when 1
                    puts("== Thêm mới Thí sinh khối A ==")
                    puts("*Nhập số báo danh: ")
                    soBaoDanh_118 = gets.to_s
                    while (tuyenSinh_118.checkSoBaoDanh(thiSinhS_118, soBaoDanh_118) == true)
                        puts("Số báo danh đã tồn tại! Nhập lại: ")
                        soBaoDanh_118 = gets.to_s
                    end

                    puts("*Nhập họ và tên: ")
                    hoTen_118 = gets.to_s
                    puts("*Nhập địa chỉ: ")
                    diaChi_118 = gets.to_s
                    puts("*Nhập mức ưu tiên: ")
                    mucUuTien_118 = gets.to_i
                    khoiA_118 = KhoiA.new(soBaoDanh_118, hoTen_118, diaChi_118, mucUuTien_118)
                    tuyenSinh_118.themMoi(thiSinhS_118, khoiA_118)
                when 2
                    puts("== Thêm mới Thí sinh khối B ==")
                    puts("*Nhập số báo danh: ")
                    soBaoDanh_118 = gets.to_s
                    while (tuyenSinh_118.checkSoBaoDanh(thiSinhS_118, soBaoDanh_118) == true)
                        puts("Số báo danh đã tồn tại! Nhập lại: ")
                        soBaoDanh_118 = gets.to_s
                    end

                    puts("*Nhập họ và tên: ")
                    hoTen_118 = gets.to_s
                    puts("*Nhập địa chỉ: ")
                    diaChi_118 = gets.to_s
                    puts("*Nhập mức ưu tiên: ")
                    mucUuTien_118 = gets.to_i
                    khoiB_118 = KhoiB.new(soBaoDanh_118, hoTen_118, diaChi_118, mucUuTien_118)
                    tuyenSinh_118.themMoi(thiSinhS_118, khoiB_118)
                when 3
                    puts("== Thêm mới Thí sinh khối C ==")
                    puts("*Nhập số báo danh: ")
                    soBaoDanh_118 = gets.to_s
                    while (tuyenSinh_118.checkSoBaoDanh(thiSinhS_118, soBaoDanh_118) == true)
                        puts("Số báo danh đã tồn tại! Nhập lại: ")
                        soBaoDanh_118 = gets.to_s
                    end

                    puts("*Nhập họ và tên: ")
                    hoTen_118 = gets.to_s
                    puts("*Nhập địa chỉ: ")
                    diaChi_118 = gets.to_s
                    puts("*Nhập mức ưu tiên: ")
                    mucUuTien_118 = gets.to_i
                    khoiC_118 = KhoiC.new(soBaoDanh_118, hoTen_118, diaChi_118, mucUuTien_118)
                    tuyenSinh_118.themMoi(thiSinhS_118, khoiC_118)
                else 
                    puts("Không hợp lệ!")
            end
        when 2
            puts("== 2. Hiển thị thông tin của thí sinh và khối thi của thí sinh ==")
            if(thiSinhS_118.length != 0)
                puts("** Danh sáchthí sinh **")
                tuyenSinh_118.hienThiDanhSach(thiSinhS_118)
            else
                puts("Không có thí sinh nào!")
            end  
        when 3
            puts("== 3. Tìm kiếm theo số báo danh ==")
            puts("*Nhập số báo danh muốn tìm: ")
            soBaoDanhTK_118 = gets.to_s
            tuyenSinh_118.timKiemTheoSBD(thiSinhS_118, soBaoDanhTK_118)
        when 4
            puts("== 4. Thoát khỏi chương trình ==")
            return
        else
            puts("Không hợp lệ!")
    end
end