require_relative "Phong"

class PhongC < Phong
    def initialize()
        super("C", 100)
    end

    def hienThi()
        puts("- Phong C: {Loai phong: #{@loai_118} - Gia phong: #{@gia_118}}")
    end
end