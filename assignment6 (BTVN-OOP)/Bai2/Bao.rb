require_relative "TaiLieu"
class Bao < TaiLieu
    attr_accessor :ngayPhatHanh_118

    def initialize(maTaiLieu_118, tenNXB_118, soBanPhatHanh_118, ngayPhatHanh_118)
        super(maTaiLieu_118, tenNXB_118, soBanPhatHanh_118)
        @ngayPhatHanh_118 = ngayPhatHanh_118
    end

    def hienThiThongTin()
        puts("-- Mã tài liệu: #{@maTaiLieu_118} - Tên NXB: #{@tenNXB_118} - Số bản phát hành: #{@soBanPhatHanh_118} - Ngày phát hành: #{@ngayPhatHanh_118}")
    end
end
