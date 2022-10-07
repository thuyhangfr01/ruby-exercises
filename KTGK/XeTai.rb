require_relative "PhuongTien"

class XeTai < PhuongTien
    attr_accessor :trongTai_118

    def initialize(id_118, hangSX_118, namSX_118, dongXe_118, giaBan_118, bienSo_118, mauXe_118, trongTai_118)
        super(id_118, hangSX_118, namSX_118, dongXe_118, giaBan_118, bienSo_118, mauXe_118)
        @trongTai_118 = trongTai_118
    end

    def hienThiThongTin()
        puts("** Thong tin xe tai: ")
        puts("- ID: #{@id_118} - Hang san xuat: #{@hangSX_118} - Nam san xuat: #{@namSX_118} - Dong xe: #{@dongXe_118} - Gia ban: #{@giaBan_118} - Bien so: #{@bienSo_118} - Mau xe: #{@mauXe_118} - Trong tai: #{@trongTai_118}")
    end
end