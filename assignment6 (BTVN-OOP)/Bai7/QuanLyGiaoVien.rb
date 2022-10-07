class QuanLyGiaoVien
    def initialize
    end

    def themMoi(giaoVienS_118, giaoVien_118)
        giaoVienS_118.push(giaoVien_118)
    end

    def checkMaGiaoVien(giaoVienS_118, key_118)
        for giaoVien_118 in giaoVienS_118 do
            if giaoVien_118.maGiaoVien_118 == key_118
                return true
            end
        end
    end

    def hienThiDanhSach(giaoVienS_118)
        a = giaoVienS_118.uniq {|giaoVien_118| giaoVien_118.maGiaoVien_118}
        for giaoVien_118 in a do
            giaoVien_118.hienThiThongTin()
        end
    end

    def xoa(giaoVienS_118, key_118)
        gv_118 = giaoVienS_118.select{|giaoVien_118| giaoVien_118.maGiaoVien_118 == key_118}
        if (gv_118.length != 0)
            giaoVienS_118.delete_if{|giaoVien_118| giaoVien_118.maGiaoVien_118 == key_118}
            puts("Xóa thành công! Bạn có thể xem lại danh sách tài liệu ở công việc số 3!")      
        else
            puts("Không tìm thấy mã giáo viên phù hợp!")
        end
    end
end