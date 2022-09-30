class QuanLyCanBo
    def initialize

    end

    def themMoi(canBo_s118, canBo118)
        canBo_s118.push(canBo118)
    end

    def hienThiDanhSach(canBo_s118)
        for canBo118 in canBo_s118 do
            canBo118.hienThiThongTin()
        end
    end

    def timKiemTheoTen(key118, canBo_s118)
        puts("-- Kết quả tìm kiếm: ")
        for canBo118 in canBo_s118 do
            if canBo118.hoTen118.include? key118
                canBo118.hienThiThongTin()                
            end
        end
    end

end