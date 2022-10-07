require_relative "PhuongTien"

class Oto < PhuongTien
    attr_accessor :soChoNgoi_118, :kieuDongCo_118, :nhienLieu_118, :soTuiKhi_118, :ngayDangKiem_118

    def initialize(id_118, hangSX_118, namSX_118, dongXe_118, giaBan_118, bienSo_118, mauXe_118, 
        soChoNgoi_118, kieuDongCo_118, nhienLieu_118, soTuiKhi_118, ngayDangKiem_118)
        super(id_118, hangSX_118, namSX_118, dongXe_118, giaBan_118, bienSo_118, mauXe_118)
        @soChoNgoi_118 = soChoNgoi_118
        @kieuDongCo_118 = kieuDongCo_118
        @nhienLieu_118 = nhienLieu_118
        @soTuiKhi_118 = soTuiKhi_118
        @ngayDangKiem_118 = ngayDangKiem_118
    end

    def hienThiThongTin()
        puts("** Thong tin o to: ")
        puts("- ID: #{@id_118} - Hang san xuat: #{@hangSX_118} - Nam san xuat: #{@namSX_118} - Dong xe: #{@dongXe_118} - Gia ban: #{@giaBan_118} - Bien so: #{@bienSo_118} - Mau xe: #{@mauXe_118} - So cho ngoi: #{@soChoNgoi_118} - Kieu dong co: #{@kieuDongCo_118} - Nhien lieu: #{@nhienLieu_118} - So tui khi: #{@soTuiKhi_118} - Ngay dang kiem: #{@ngayDangKiem_118}")
    end
end