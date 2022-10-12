class TuyenSinh
    def initialize
    end

    def themMoi(thiSinhS_118, thiSinh_118)
        thiSinhS_118.push(thiSinh_118)
    end

    def checkSoBaoDanh(thiSinhS_118, key_118)
        for thiSinh_118 in thiSinhS_118 do
            if thiSinh_118.soBaoDanh_118 == key_118
                return true
            end
        end
    end

    def hienThiDanhSach(thiSinhS_118)
        a = thiSinhS_118.uniq {|thiSinh_118| thiSinh_118.soBaoDanh_118}
        for thiSinh_118 in a do
            thiSinh_118.hienThiThongTin()
        end
    end

    def timKiemTheoSBD(thiSinhS_118, key_118)
        for thiSinh_118 in thiSinhS_118 do
            if thiSinh_118.soBaoDanh_118.include? key_118
                puts("-- Kết quả tìm kiếm: ")
                thiSinh_118.hienThiThongTin()       
            else
                puts("Không tìm thấy số báo danh phù hợp!")         
            end
        end
    end
end