require_relative "CanBo"
class CongNhan < CanBo
    attr_accessor :bac118

    def initialize(hoTen118, tuoi118, gioiTinh118, diaChi118, bac118)
        super(hoTen118, tuoi118, gioiTinh118, diaChi118)
        @bac118 = bac118
    end

    def hienThiThongTin()
        puts("-- Họ tên: #{@hoTen118} - Tuổi: #{@tuoi118} - Giới tính: #{@gioiTinh118} - Địa chỉ: #{@diaChi118} - Bậc: #{@bac118}")
    end
end