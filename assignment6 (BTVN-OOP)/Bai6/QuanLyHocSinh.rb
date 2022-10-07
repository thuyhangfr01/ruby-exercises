class QuanLyHocSinh
    def initialize
    end

    def themMoi(hocSinhS_118, hocSinh_118)
        hocSinhS_118.push(hocSinh_118)
    end

    def hienThiDanhSach(hocSinhS_118)
        for i in 0..(hocSinhS_118.length()-1) do
            puts("*Học sinh #{i+1}: - Họ tên: #{hocSinhS_118[i].hoTen_118} - Tuổi: #{hocSinhS_118[i].tuoi_118} - Quê quán: #{hocSinhS_118[i].queQuan_118} - Lớp: #{hocSinhS_118[i].lop_118}")
        end
    end

    def hienThiHocSinh20t(hocSinhS_118)
        hs_118 = hocSinhS_118.select{|hocSinh_118| hocSinh_118.tuoi_118 == 20}
        if (hs_118.length() != 0)
            for i in 0..(hs_118.length()-1) do
                if(hs_118[i].tuoi_118 == 20)
                    puts("*Học sinh #{i+1}: - Họ tên: #{hs_118[i].hoTen_118} - Tuổi: #{hs_118[i].tuoi_118} - Quê quán: #{hs_118[i].queQuan_118} - Lớp: #{hs_118[i].lop_118}")
                end
            end
        else
            puts("Không tồn tại sinh viên nào!")
        end
        
    end

    def hienThiHocSinh23t(hocSinhS_118)
        dem_118 = hocSinhS_118.select{|hocSinh_118| hocSinh_118.queQuan_118.include?("Da Nang") && hocSinh_118.tuoi_118 == 23}.size
        puts("Số lượng học sinh 23 tuổi và quê ở Đà Nẵng: #{dem_118}")
    end
end