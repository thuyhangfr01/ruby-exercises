require_relative "Phong"

class PhongB < Phong
    def initialize()
        super("B", 300)
    end

    def hienThi()
        puts("- Phong B: {Loai phong: #{@loai_118} - Gia phong: #{@gia_118}}")
    end
end