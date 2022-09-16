class SinhVien
    def initialize(maSinhVien, hoTen)
        @maSinhVien = maSinhVien
        @hoTen = hoTen
    end
    def hienThiThongTin
        "Mã sinh viên: #{@maSinhVien} - Họ và tên: #{@hoTen}"
    end
    def hienThiDiem
        puts "- Nhập điểm toán: " 
        dToan = gets.to_f
        puts "- Nhập điểm lý: " 
        dLy = gets.to_f
        puts "- Nhập điểm hóa: " 
        dHoa = gets.to_f

        avg = (dToan+dLy+dHoa)/3.0
        puts "--> Điểm trung bình 3 môn: #{avg}" 
    end
end

sv = SinhVien.new("1911505310118", "Cao Thị Thúy Hằng")
puts sv.hienThiDiem
puts sv.hienThiThongTin
