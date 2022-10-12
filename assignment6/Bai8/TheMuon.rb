require_relative "SinhVien"

class TheMuon < SinhVien
    attr_accessor :maPhieuMuon_118
    attr_accessor :ngayMuon_118
    attr_accessor :hanTra_118
    attr_accessor :soHieuSach_118

    def initialize(hoTen_118, tuoi_118, lop_118, maPhieuMuon_118, ngayMuon_118, hanTra_118, soHieuSach_118)
        super(hoTen_118, tuoi_118, lop_118)
        @maPhieuMuon_118 = maPhieuMuon_118
        @ngayMuon_118 = ngayMuon_118
        @hanTra_118 = hanTra_118
        @soHieuSach_118 = soHieuSach_118
    end

    def hienThiThongTin()
        puts("-- Họ tên: #{@hoTen_118} - Tuổi: #{@tuoi_118} - Lớp: #{lop_118} - Mã phiếu mượn: #{@maPhieuMuon_118} - Ngày mượn: #{@ngayMuon} - Hạn trả: #{@hanTra_118} - Số hiệu sách: #{@soHieuSach_118}")
    end
end