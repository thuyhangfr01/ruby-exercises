class QuanLyPTGT
    def initialize
        
    end

    def themMoi(phuongTienS_118, phuongTien_118)
        phuongTienS_118.push(phuongTien_118)
    end

    def kiemTraID(phuongTienS_118, id_118)
        for phuongTien_118 in phuongTienS_118 do
            if phuongTien_118.id_118 == id_118
                return true
            end
        end
    end

    def kiemTraBienSo(phuongTienS_118, bs_118)
        for phuongTien_118 in phuongTienS_118 do
            if phuongTien_118.bienSo_118 == bs_118
                return true
            end
        end
    end
    
    def hienThiDanhSach(phuongTienS_118)
        if(phuongTienS_118.length() != 0)
            puts("** Danh sách phuong tien **")
            for phuongTien_118 in phuongTienS_118 do
                phuongTien_118.hienThiThongTin()
            end
        else
            puts("Khong co phuong tien nao!")
        end 
    end

    def xoaTheoID(phuongTienS_118, key_118)
        pt_118 = phuongTienS_118.select{|phuongTien_118| phuongTien_118.id_118 == key_118}
       
        if (pt_118.length() != 0)
            phuongTienS_118.delete_if{|phuongTien_118| phuongTien_118.id_118 == key_118}
            puts("Xoa thanh cong! Ban co the xem lai danh sach o cong viec 2!")
        else
            puts("Khong ton tai ID nay!")
        end
    end

    def timTheoHangSX(phuongTienS_118, hsx_118)
        for phuongTien_118 in phuongTienS_118 do
            if phuongTien_118.hangSX_118.include? hsx_118
                puts("-- Ket qua tim kiem theo hang san xuat: ")
                phuongTien_118.hienThiThongTin()       
            else
                puts("Khong tim thay ket qua nao!")         
            end
        end
    end

    def timTheoMau(phuongTienS_118, mau_118)
        for phuongTien_118 in phuongTienS_118 do
            if phuongTien_118.mauXe_118.include? mau_118
                puts("-- Ket qua tim kiem theo mau: ")
                phuongTien_118.hienThiThongTin()       
            else
                puts("Khong tim thay ket qua nao!")         
            end
        end
    end

    def timTheoBienSo(phuongTienS_118, bs_118)
        for phuongTien_118 in phuongTienS_118 do
            if phuongTien_118.bienSo_118.include? bs_118
                puts("-- Ket qua tim kiem theo bien so: ")
                phuongTien_118.hienThiThongTin()       
            else
                puts("Khong tim thay ket qua nao!")         
            end
        end
    end
end