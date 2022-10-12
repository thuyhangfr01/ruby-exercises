require_relative "TaiLieu"
require_relative "Sach"
require_relative "Bao"
require_relative "TapChi"

class QuanLyTaiLieu
    def initialize

    end

    def themMoi(taiLieuS_118, loaiTaiLieuS_118, taiLieu_118)
        loaiTaiLieuS_118.push(taiLieu_118)
        taiLieuS_118.concat(loaiTaiLieuS_118)
    end

    def checkMaTaiLieu(taiLieuS_118, key_118)
        for taiLieu_118 in taiLieuS_118 do
            if taiLieu_118.maTaiLieu_118 == key_118
                return true
            end
        end
    end

    def hienThiDanhSach(taiLieuS_118)
        a = taiLieuS_118.uniq {|taiLieu_118| taiLieu_118.maTaiLieu_118}
        for taiLieu_118 in a do
            taiLieu_118.hienThiThongTin()
        end
    end

    def xoaTaiLieu(taiLieuS_118, key_118) 
        for taiLieu_118 in taiLieuS_118 do
            if taiLieu_118.maTaiLieu_118.include? key_118
                taiLieuS_118.delete_if{|taiLieu_118| taiLieu_118.maTaiLieu_118 == key_118}   
                puts("Xóa thành công! Bạn có thể xem lại danh sách tài liệu ở công việc số 3!")           
            else
                puts("Không tìm thấy mã tài liệu phù hợp!")
            end  
        end
    end

    def timKiemTheoSach(sachS_118)
        for sach_118 in sachS_118 do
            sach_118.hienThiThongTin()
        end
    end

    def timKiemTheoTapChi(tapChiS_118)
        for tapChi_118 in tapChiS_118 do
            tapChi_118.hienThiThongTin()
        end
    end

    def timKiemTheoBao(baoS_118)
        for bao_118 in baoS_118 do
            bao_118.hienThiThongTin()
        end
    end

end