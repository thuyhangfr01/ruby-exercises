require_relative "TaiLieu"
class Sach < TaiLieu
    attr_accessor :tenTacGia_118
    attr_accessor :soTrang_118

    def initialize(maTaiLieu_118, tenNXB_118, soBanPhatHanh_118, tenTacGia_118, soTrang_118)
        super(maTaiLieu_118, tenNXB_118, soBanPhatHanh_118)
        @tenTacGia_118 = tenTacGia_118
        @soTrang_118 = soTrang_118
    end

    def hienThiThongTin()
        puts("-- Mã tài liệu: #{@maTaiLieu_118} - Tên NXB: #{@tenNXB_118} - Số bản phát hành: #{@soBanPhatHanh_118} - Tên tác giả: #{@tenTacGia_118} - Số trang: #{@soTrang_118}")
    end
end
