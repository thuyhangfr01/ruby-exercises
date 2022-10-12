require_relative "Phong"

class PhongA < Phong
    def initialize()
        super("A", 500)
    end

    def hienThi()
        puts("- Phong A: {Loai phong: #{@loai_118} - Gia phong: #{@gia_118}}")
    end
end