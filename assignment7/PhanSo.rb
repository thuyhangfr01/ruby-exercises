class PhanSo
    attr_accessor :tu, :mau

    def initialize(tu, mau)
        @tu = tu
        @mau = mau
    end

    def +(other)
        return CongPS(PhanSo.new(@tu, @mau), other)
    end

    def -(other)
        return TruPS(PhanSo.new(@tu, @mau), other)
    end

    def *(other)
        return TichPS(PhanSo.new(@tu, @mau), other)
    end

    def /(other)
        return ThuongPS(PhanSo.new(@tu, @mau), other)
    end

    def CongPS(ps1, ps2)
        tu1 = ps1.tu
        mau1 = ps1.mau
        tu2 = ps2.tu
        mau2 = ps2.mau

        if(mau1 == mau2)
            tu = tu1 + tu2
            mau = mau1
            kq = PhanSo.new(tu, mau)
            return kq
        else
            tu = tu1*mau2 + tu2*mau1
            mau = mau1*mau2
            kq = PhanSo.new(tu, mau)
            return kq
        end
    end

    def TruPS(ps1, ps2)
        tu1 = ps1.tu
        mau1 = ps1.mau
        tu2 = ps2.tu
        mau2 = ps2.mau

        if(mau1 == mau2)
            tu = tu1 - tu2
            mau = mau1
            kq = PhanSo.new(tu, mau)
            return kq
        else
            tu = tu1*mau2 - tu2*mau1
            mau = mau1*mau2
            kq = PhanSo.new(tu, mau)
            return kq
        end
    end

    def TichPS(ps1, ps2)
        tu1 = ps1.tu
        mau1 = ps1.mau
        tu2 = ps2.tu
        mau2 = ps2.mau

        tu = tu1*tu2
        mau = mau1*mau2
        kq = PhanSo.new(tu, mau)
        return kq
    end

    def ThuongPS(ps1, ps2)
        tu1 = ps1.tu
        mau1 = ps1.mau
        tu2 = ps2.tu
        mau2 = ps2.mau

        tu = tu1*mau2
        mau = tu2*mau1
        kq = PhanSo.new(tu, mau)
        return kq
    end

    def hienThi()
        puts("#{tu}/#{mau}")
    end

    def USCLN(a, b)
        while (a != b) do
            if(a > b)
                a -= b
            else
                b -= a
            end
        end
        return a
    end

    def toiGianPS(ps)
        tu = ps.tu
        mau = ps.mau
        i = USCLN(tu, mau)
        tu = tu/i
        mau = mau/i
        kq = PhanSo.new(tu, mau)
        return kq
    end
end