require_relative "Nguoi"
require_relative "HoGiaDinh"

class KhuPho
    def initialize
        
    end

    def themHoGiaDinh(hoGiaDinhS_118, hoGiaDinh_118)
        hoGiaDinhS_118.push(hoGiaDinh_118)
    end

    def themThanhVien(thanhVienS_118, thanhVien_118)
        thanhVienS_118.push(thanhVien_118)
    end

    def hienThiDanhSach(hoGiaDinhS_118, thanhVienS_118)
        for i_118 in 0..(hoGiaDinhS_118.length()-1) do
            for j_118 in 0..(thanhVienS_118.length()-1) do
                puts("================================")
                puts("** Danh sách các hộ gia đình **")
                puts("*  Hộ gia đình số #{i_118+1}: ")
                puts("-- Số nhà: #{hoGiaDinhS_118[i_118].soNha_118}")
                
                puts("**  Thành viên thứ #{j_118+1}: ")
                puts("--- Họ và tên: #{thanhVienS_118[j_118].hoTen_118}")
                puts("--- Tuổi: #{thanhVienS_118[j_118].tuoi_118}")
                puts("--- Nghề nghiệp: #{thanhVienS_118[j_118].ngheNghiep_118}")
                puts("--- CMND: #{thanhVienS_118[j_118].cmnd_118}")
                end           
        end
    end
end