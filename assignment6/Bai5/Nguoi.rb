
class Nguoi
    attr_accessor :hoTen_118, :tuoi_118, :cmnd_118, :loaiPhong_118, :soNgayThue_118

    def initialize(hoTen_118, tuoi_118, cmnd_118, loaiPhong_118, soNgayThue_118)
        @hoTen_118 = hoTen_118
        @tuoi_118 = tuoi_118
        @cmnd_118 = cmnd_118
        @loaiPhong_118 = loaiPhong_118
        @soNgayThue_118 = soNgayThue_118
    end

    def hienThi()
        puts("==================")
        puts("- Họ và tên: #{@hoTen_118} - Tuổi: #{@tuoi_118} - CMND: #{@cmnd_118} - Số ngày thuế: #{@soNgayThue_118} #{@loaiPhong_118.hienThi()} ")
    end
end