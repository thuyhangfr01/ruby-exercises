require_relative "ThiSinh"

class KhoiB < ThiSinh
    def initialize(soBaoDanh_118, hoTen_118, diaChi_118, mucUuTien_118)
        super(soBaoDanh_118, hoTen_118, diaChi_118, mucUuTien_118)
    end

    def hienThiThongTin()
        puts("-- Số báo danh: #{@soBaoDanh_118} - Họ tên: #{@hoTen_118} - Địa chỉ: #{@diaChi_118} - Mức ưu tiên: #{@mucUuTien_118} - Tổ hợp khối B: Toán, Hóa, Sinh")
    end
end