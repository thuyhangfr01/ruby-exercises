require_relative "HoGiaDinh"

class KhuPho
    attr_accessor :hoGiaDinhS_118

    def initialize(hoGiaDinhS_118)
        @hoGiaDinhS_118 = hoGiaDinhS_118
    end

    def themMoi(hoGiaDinhS_118, hoGiaDinh_118)
        @hoGiaDinhS_118.push(hoGiaDinh_118)
    end

    def hienThiThongTin()
        # for hoGiaDinh_118 in hoGiaDinhS_118 do
        #     hoGiaDinh_118.hienThiThongTin
        # end
        puts("== Danh sách hộ dân ==")
        hoGiaDinhS_118.each do |hoGiaDinh_118|
            puts("----------------------")
            hoGiaDinh_118.hienThiThongTin
          end
    end
end