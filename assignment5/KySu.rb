require_relative "CanBo"
class KySu < CanBo
    attr_accessor :nganhDaoTao118

    def initialize(hoTen118, tuoi118, gioiTinh118, diaChi118, nganhDaoTao118)
        super(hoTen118, tuoi118, gioiTinh118, diaChi118)
        @nganhDaoTao118 = nganhDaoTao118
    end

    def hienThiThongTin()
        puts("-- Họ tên: #{@hoTen118} - Tuổi: #{@tuoi118} - Giới tính: #{@gioiTinh118} - Địa chỉ: #{@diaChi118} - Ngành đào tạo: #{@nganhDaoTao118}")
    end
end