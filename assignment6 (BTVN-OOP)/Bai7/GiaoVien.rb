class GiaoVien
    attr_accessor :hoTen_118
    attr_accessor :tuoi_118
    attr_accessor :queQuan_118
    attr_accessor :maGiaoVien_118
    attr_accessor :lgCung_118
    attr_accessor :lgThuong_118
    attr_accessor :tienPhat_118
    attr_accessor :lgThucLinh_118

    def initialize(hoTen_118, tuoi_118, queQuan_118, maGiaoVien_118, lgCung_118, lgThuong_118, tienPhat_118, lgThucLinh_118)
        @hoTen_118 = hoTen_118
        @tuoi_118 = tuoi_118
        @queQuan_118 = queQuan_118
        @maGiaoVien_118 = maGiaoVien_118
        @lgCung_118 = lgCung_118
        @lgThuong_118 = lgThuong_118
        @tienPhat_118 = tienPhat_118
        @lgThucLinh_118 = lgThucLinh_118
    end

    def hienThiThongTin()
        puts("-- Họ tên: #{@hoTen_118} - Tuổi: #{@tuoi_118} - Quê quán: #{@queQuan_118} - Mã giáo viên: #{@maGiaoVien_118} - Lương cứng: #{lgCung_118} - Lương thưởng: #{lgThuong_118} - Tiền phạt: #{@tienPhat_118} - Lương thực lĩnh: #{@lgThucLinh_118}")
    end
end