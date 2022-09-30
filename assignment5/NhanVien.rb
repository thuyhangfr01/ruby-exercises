require_relative "CanBo"
class NhanVien < CanBo
    attr_accessor :congViec118

    def initialize(hoTen118, tuoi118, gioiTinh118, diaChi118, congViec118)
        super(hoTen118, tuoi118, gioiTinh118, diaChi118)
        @congViec118 = congViec118
    end

    def hienThiThongTin()
        puts("-- Họ tên: #{@hoTen118} - Tuổi: #{@tuoi118} - Giới tính: #{@gioiTinh118} - Địa chỉ: #{@diaChi118} - Công việc: #{@congViec118}")
    end
end