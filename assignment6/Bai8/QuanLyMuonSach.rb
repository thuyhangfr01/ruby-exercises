class QuanLyMuonSach
    def initialize
        
    end

    def themMoi(theMuonS_118, theMuon_118)
        theMuonS_118.push(theMuon_118)
    end

    def checkMaPhieuMuon(theMuonS_118, key_118)
        for theMuon_118 in theMuonS_118 do
            if theMuon_118.maPhieuMuon_118 == key_118
                return true
            end
        end
    end

    def xoa(theMuonS_118, key_118)
        tm_118 = theMuonS_118.select{|theMuon_118| theMuon_118.maPhieuMuon_118 == key_118}
        if (tm_118.length() != 0)
            theMuonS_118.delete_if{|theMuon_118| theMuon_118.maPhieuMuon_118 == key_118}
            puts("Xóa thành công! Bạn có thể xem lại danh sách thẻ mượn ở công việc 3!")
        else
            puts("Không tồn tại mã phiếu mượn này!")
        end
    end

    def hienThiDanhSach(theMuonS_118)
        if (theMuonS_118.length() != 0)
            puts("** Danh sách phiếu mượn **")
            for theMuon_118 in theMuonS_118 do
                theMuon_118.hienThiThongTin()
            end
        else
            puts("Không có phiếu mượn nào!")
        end
    end
end