require_relative "Oto"
require_relative "XeMay"
require_relative "XeTai"
require_relative "QuanLyPTGT"

quanLyPTGT_118 = QuanLyPTGT.new
phuongTienS_118 = []

while true
    puts("== CAO THI THUY HANG - 1911505310118 ==")
    puts("---- QUAN LY PHUONG TIEN GIAO THONG ----")
    puts("1. Them moi phuong tien")
    puts("2. Hien thi danh sach cac phuong tien")
    puts("3. Xoa phuong tien theo ID")
    puts("4. Tim kiem phuong tien")
    puts("5. Thoat chuong trinh")
    puts("Chon 1 cong viec: ")
    cv_118 = gets.to_i

    case cv_118
        when 1
            puts("==============================")
            puts("-- 1. Them moi phuong tien --")
            puts("1. O to")
            puts("2. Xe may")
            puts("3. Xe tai")
            puts("Chon 1 loai phuong tien muon them: ")
            pt_118 = gets.to_i
            case pt_118
                when 1
                    puts("-- 1.1. Them moi o to --")
                    puts("* Nhap ID: ")
                    id_118 = gets.to_s
                    while (quanLyPTGT_118.kiemTraID(phuongTienS_118, id_118) == true)
                        puts("ID da ton tai, nhap lai: ")
                        id_118 = gets.to_s
                    end
                    puts("* Nhap hang san xuat: ")
                    hangSX_118 = gets.to_s
                    puts("* Nhap nam san xuat: ")
                    namSX_118 = gets.to_i
                    puts("* Nhap dong xe: ")
                    dongXe_118 = gets.to_s
                    puts("* Nhap gia ban: ")
                    giaBan_118 = gets.to_i
                    puts("* Nhap bien so: ")
                    bienSo_118 = gets.to_s
                    while (quanLyPTGT_118.kiemTraBienSo(phuongTienS_118, bienSo_118) == true)
                        puts("Bien so da ton tai, nhap lai: ")
                        bienSo_118 = gets.to_s
                    end
                    puts("* Nhap mau xe: ")
                    mauXe_118 = gets.to_s
                    puts("* Nhap so cho ngoi: ")
                    soChoNgoi_118 = gets.to_i
                    puts("* Nhap kieu dong co: ")
                    kieuDongCo_118 = gets.to_s
                    puts("* Nhap nhien lieu (Xang/Dau): ")
                    nhienLieu_118 = gets.to_s
                    puts("* Nhap so tui khi: ")
                    soTuiKhi_118 = gets.to_i
                    puts("* Nhap ngay dang kiem: ")
                    ngayDangKiem_118 = gets.to_s

                    oto_118 = Oto.new(id_118, hangSX_118, namSX_118, dongXe_118, giaBan_118, bienSo_118, mauXe_118, 
                        soChoNgoi_118, kieuDongCo_118, nhienLieu_118, soTuiKhi_118, ngayDangKiem_118)
                    quanLyPTGT_118.themMoi(phuongTienS_118, oto_118)
                when 2
                    puts("-- 1.2. Them moi xe may --")
                    puts("* Nhap ID: ")
                    id_118 = gets.to_s
                    while (quanLyPTGT_118.kiemTraID(phuongTienS_118, id_118) == true)
                        puts("ID da ton tai, nhap lai: ")
                        id_118 = gets.to_s
                    end
                    puts("* Nhap hang san xuat: ")
                    hangSX_118 = gets.to_s
                    puts("* Nhap nam san xuat: ")
                    namSX_118 = gets.to_i
                    puts("* Nhap dong xe: ")
                    dongXe_118 = gets.to_s
                    puts("* Nhap gia ban: ")
                    giaBan_118 = gets.to_i
                    puts("* Nhap bien so: ")
                    bienSo_118 = gets.to_s
                    while (quanLyPTGT_118.kiemTraBienSo(phuongTienS_118, bienSo_118) == true)
                        puts("Bien so da ton tai, nhap lai: ")
                        bienSo_118 = gets.to_s
                    end
                    puts("* Nhap mau xe: ")
                    mauXe_118 = gets.to_s
                    puts("* Nhap cong suat: ")
                    congSuat_118 = gets.to_i
                    puts("* Nhap dung tich binh xang: ")
                    dungTichXang_118 = gets.to_i

                    xeMay_118 = XeMay.new(id_118, hangSX_118, namSX_118, dongXe_118, giaBan_118, bienSo_118, mauXe_118, 
                        congSuat_118, dungTichXang_118)
                    quanLyPTGT_118.themMoi(phuongTienS_118, xeMay_118)
                when 3
                    puts("-- 1.3. Them moi o to --")
                    puts("* Nhap ID: ")
                    id_118 = gets.to_s
                    while (quanLyPTGT_118.kiemTraID(phuongTienS_118, id_118) == true)
                        puts("ID da ton tai, nhap lai: ")
                        id_118 = gets.to_s
                    end
                    puts("* Nhap hang san xuat: ")
                    hangSX_118 = gets.to_s
                    puts("* Nhap nam san xuat: ")
                    namSX_118 = gets.to_i
                    puts("* Nhap dong xe: ")
                    dongXe_118 = gets.to_s
                    puts("* Nhap gia ban: ")
                    giaBan_118 = gets.to_i
                    puts("* Nhap bien so: ")
                    bienSo_118 = gets.to_s
                    while (quanLyPTGT_118.kiemTraBienSo(phuongTienS_118, bienSo_118) == true)
                        puts("Bien so da ton tai, nhap lai: ")
                        bienSo_118 = gets.to_s
                    end
                    puts("* Nhap mau xe: ")
                    mauXe_118 = gets.to_s
                    puts("* Nhap trong tai: ")
                    trongTai_118 = gets.to_i

                    xeTai_118 = XeTai.new(id_118, hangSX_118, namSX_118, dongXe_118, giaBan_118, bienSo_118, mauXe_118, trongTai_118)
                    quanLyPTGT_118.themMoi(phuongTienS_118, xeTai_118)
                else
                    puts("Khong hop le!")
            end
        when 2
            puts("==============================")
            puts("-- 2. Hien thi danh sach cac phuong tien -- ")
            quanLyPTGT_118.hienThiDanhSach(phuongTienS_118)
        when 3
            puts("==============================")
            puts("-- 3. Xoa phuong tien theo ID -- ")
            puts("* Nhap ID phuong tien muon xoa: ")
            i_118 = gets.to_s
            quanLyPTGT_118.xoaTheoID(phuongTienS_118, i_118)
        when 4
            puts("==============================")
            puts("-- 4. Tim kiem phuong tien -- ")
            puts("1. Theo hang san xuat")
            puts("2. Theo mau")
            puts("3. Theo bien so")
            puts("Chon 1 cong viec: ")
            tk_118 = gets.to_i

            case tk_118
                when 1
                    puts("-- 4.1 Tim kiem theo hang san xuat --")
                    puts("* Nhap hang san xuat: ")
                    hsx_118 = gets.to_s
                    quanLyPTGT_118.timTheoHangSX(phuongTienS_118, hsx_118)
                when 2
                    puts("-- 4.2 Tim kiem theo mau --")
                    puts("* Nhap mau: ")
                    mau_118 = gets.to_s
                    quanLyPTGT_118.timTheoMau(phuongTienS_118, mau_118)
                when 3
                    puts("-- 4.3 Tim kiem bien so --")
                    puts("* Nhap bien so: ")
                    bs_118 = gets.to_s
                    quanLyPTGT_118.timTheoBienSo(phuongTienS_118, bs_118)
                else
                    puts("Khong hop le!")
            end
        when 5
            puts("-- 5. Thoat chuong trinh --")
            puts("Hen gap lai!")
            return
        else
            puts("Khong hop le!")
    end
end