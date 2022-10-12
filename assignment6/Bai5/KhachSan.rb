class KhachSan
    attr_accessor :nguoiS_118

    def initialize(nguoiS_118)
        @nguoiS_118 = nguoiS_118
    end

    def themMoi(nguoiS_118, nguoi_118)
        @nguoiS_118.push(nguoi_118)
    end

    def hienThiDanhSach()
        if(nguoiS_118.length() != 0)
            puts("** Danh sách khách hàng **")
            nguoiS_118.each do |nguoi_118|
                nguoi_118.hienThi()
            end
        else
            puts("Không có khách hàng nào!")
        end 
    end

    def xoa(nguoiS_118, key_118)
        ng_118 = nguoiS_118.select{|nguoi_118| nguoi_118.cmnd_118 == key_118}
       
        if (ng_118.length() != 0)
            nguoiS_118.delete_if{|nguoi_118| nguoi_118.cmnd_118 == key_118}
            puts("Xóa thành công! Danh sách khách hàng lúc này đã được cập nhật!")
        else
            puts("Không tồn tại CMND này!")
        end
    end

    def tinhTienPhong(nguoiS_118, key_118)
        ng_118 = nguoiS_118.select{|nguoi_118| nguoi_118.cmnd_118 == key_118}
        if (ng_118.length() != 0)
            for n_118 in ng_118 do
                tien_118 = n_118.soNgayThue_118 * n_118.loaiPhong_118.gia_118
                puts("-- Tiền thuê phòng của khách hàng này: #{tien_118}")
            end
        else
            puts("Không tồn tại CMND này!")
        end
    end
end