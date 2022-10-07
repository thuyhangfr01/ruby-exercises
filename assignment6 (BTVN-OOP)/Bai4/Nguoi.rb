class Nguoi
    attr_accessor :hoTen_118, :tuoi_118, :ngheNghiep_118, :cmnd_118

    def initialize(hoTen_118, tuoi_118, ngheNghiep_118, cmnd_118)
        @hoTen_118 = hoTen_118
        @tuoi_118 = tuoi_118
        @ngheNghiep_118 = ngheNghiep_118
        @cmnd_118 = cmnd_118
    end

    def hienThiDanhSach()
        puts("- Họ và tên: #{@hoTen_118} - Tuổi: #{@tuoi_118} - Nghề nghiệp: #{@ngheNghiep_118} - CMND: #{@cmnd_118}")
    end
end