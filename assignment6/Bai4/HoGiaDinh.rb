require_relative "Nguoi"

class HoGiaDinh
    attr_accessor :soNha_118

    def initialize(soNha_118, nguoiS_118)
        @soNha_118 = soNha_118
        @nguoiS_118 = nguoiS_118
    end

    def hienThiThongTin()
        for nguoi_118 in @nguoiS_118 do
            puts("- Số nhà: #{@soNha_118}")
            nguoi_118.hienThiThongTin
        end
    end
end