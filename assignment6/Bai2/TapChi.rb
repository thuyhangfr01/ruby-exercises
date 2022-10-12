require_relative "TaiLieu"
class TapChi < TaiLieu
    attr_accessor :soPhatHanh_118
    attr_accessor :thangPhatHanh_118

    def initialize(maTaiLieu_118, tenNXB_118, soBanPhatHanh_118, soPhatHanh_118, thangPhatHanh_118)
        super(maTaiLieu_118, tenNXB_118, soBanPhatHanh_118)
        @soPhatHanh_118 = soPhatHanh_118
        @thangPhatHanh_118 = thangPhatHanh_118
    end

    def hienThiThongTin()
        puts("-- Mã tài liệu: #{@maTaiLieu_118} - Tên NXB: #{@tenNXB_118} - Số bản phát hành: #{@soBanPhatHanh_118} - Số phát hành: #{@soPhatHanh_118} - Tháng phát hành: #{@thangPhatHanh_118}")
    end
end
