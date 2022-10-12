require_relative "Sach"
require_relative "Bao"
require_relative "TapChi"
require_relative "QuanLyTaiLieu"

quanLyTaiLieu_118 = QuanLyTaiLieu.new
taiLieuS_118 = []
sachS_118 = []
tapChiS_118 = []
baoS_118 = []

while(true)
    puts("---- QUẢN LÝ TÀI LIỆU ----")
    puts("1. Thêm mới tài liệu")
    puts("2. Xóa tài liệu theo mã tài liệu")
    puts("3. Hiện thị thông tin về tài liệu")
    puts("4. Tìm kiếm tài liệu theo loại")
    puts("5. Thoát khỏi chương trình")
    puts("-- Chọn công việc: ")
    cv_118 = gets.to_i

    case cv_118
        when 1
            puts(" == 1. Thêm mới tài liệu == ")
            puts("1. Sách")
            puts("2. Tạp chí")
            puts("3. Báo")
            puts("-- Chọn loại tài liệu muốn thêm: ")
            l_118 = gets.to_i    
            case l_118
                when 1
                    puts("== Thêm mới Sách ==")
                    puts("*Nhập mã tài liệu: ")
                    maTaiLieu_118 = gets.to_s
                    while (quanLyTaiLieu_118.checkMaTaiLieu(taiLieuS_118, maTaiLieu_118) == true)
                        puts("Mã tài liệu đã tồn tại! Nhập lại: ")
                        maTaiLieu_118 = gets.to_s
                    end
                
                    puts("*Nhập tên nhà xuất bản: ")
                    tenNXB_118 = gets.to_s
                    puts("*Nhập số bản phát hành: ")
                    soBanPhatHanh_118 = gets.to_i
                    puts("*Nhập tên tác giả: ")
                    tenTacGia_118 = gets.to_s
                    puts("*Nhập số trang: ")
                    soTrang_118 = gets.to_s
                    sach_118 = Sach.new(maTaiLieu_118, tenNXB_118, soBanPhatHanh_118, tenTacGia_118, soTrang_118)
                    quanLyTaiLieu_118.themMoi(taiLieuS_118, sachS_118, sach_118)
                when 2
                    puts("== Thêm mới Tạp chí ==")
                    puts("*Nhập mã tài liệu: ")
                    maTaiLieu_118 = gets.to_s
                    while (quanLyTaiLieu_118.checkMaTaiLieu(taiLieuS_118, maTaiLieu_118) == true)
                        puts("Mã tài liệu đã tồn tại! Nhập lại: ")
                        maTaiLieu_118 = gets.to_s
                    end
                    puts("*Nhập tên nhà xuất bản: ")
                    tenNXB_118 = gets.to_s
                    puts("*Nhập số bản phát hành: ")
                    soBanPhatHanh_118 = gets.to_i
                    puts("*Nhập số phát hành: ")
                    soPhatHanh_118 = gets.to_i
                    puts("*Nhập tháng phát hành: ")
                    thangPhatHanh_118 = gets.to_i
                    tapChi_118 = TapChi.new(maTaiLieu_118, tenNXB_118, soBanPhatHanh_118, soPhatHanh_118, thangPhatHanh_118)
                    quanLyTaiLieu_118.themMoi(taiLieuS_118, tapChiS_118, tapChi_118)
                when 3
                    puts("== Thêm mới Báo ==")
                    puts("*Nhập mã tài liệu: ")
                    maTaiLieu_118 = gets.to_s
                    while (quanLyTaiLieu_118.checkMaTaiLieu(taiLieuS_118, maTaiLieu_118) == true)
                        puts("Mã tài liệu đã tồn tại! Nhập lại: ")
                        maTaiLieu_118 = gets.to_s
                    end
                    puts("*Nhập tên nhà xuất bản: ")
                    tenNXB_118 = gets.to_s
                    puts("*Nhập số bản phát hành: ")
                    soBanPhatHanh_118 = gets.to_i
                    puts("*Nhập ngày phát hành: ")
                    ngayPhatHanh_118 = gets
                    bao_118 = Bao.new(maTaiLieu_118, tenNXB_118, soBanPhatHanh_118, ngayPhatHanh_118)
                    quanLyTaiLieu_118.themMoi(taiLieuS_118, baoS_118, bao_118) 
                else
                    puts("Không hợp lệ!")
            end 
        when 2
            puts("== 2. Xóa tài liệu theo mã tài liệu ==")
            puts("*Nhập mã tài liệu muốn xóa: ")
            maTaiLieuX_118 = gets.to_s
            quanLyTaiLieu_118.xoaTaiLieu(taiLieuS_118, maTaiLieuX_118)
        when 3
            puts("== 3. Hiện thị thông tin về tài liệu ==")
            if(taiLieuS_118.length != 0)
                puts("** Danh sách tài liệu **")
                quanLyTaiLieu_118.hienThiDanhSach(taiLieuS_118)
            else
                puts("Không có tài liệu nào!")
            end      
        when 4
            puts("== 4. Tìm kiếm tài liệu theo loại ==")
            puts("1. Sách")
            puts("2. Tạp chí")
            puts("3. Báo")
            puts("-- Chọn loại tài liệu muốn tìm kiếm: ")
            tk_118 = gets.to_i
            case tk_118
                when 1
                    if(sachS_118.length != 0)
                        puts("** Danh sách các loại Sách **")
                        quanLyTaiLieu_118.timKiemTheoSach(sachS_118)
                    else
                        puts("Không có sách nào!")
                    end
                    
                when 2
                    if(tapChiS_118.length != 0)
                        puts("** Danh sách các loại Tạp chí **")
                        quanLyTaiLieu_118.timKiemTheoTapChi(tapChiS_118)
                    else
                        puts("Không có tạp chí nào!")
                    end
                when 3
                    if(baoS_118.length != 0)
                        puts("** Danh sách các loại Báo **")
                        quanLyTaiLieu_118.timKiemTheoBao(baoS_118)
                    else
                        puts("Không có báo nào!")
                    end
                else
                    puts("Không hợp lệ!")
            end
        when 5
            puts("== 5. Thoát khỏi chương trình ==")
            puts("Hẹn gặp lại!")
            return
        else
            puts("Không hợp lệ!")
    end
end