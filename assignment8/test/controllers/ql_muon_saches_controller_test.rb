require "test_helper"

class QlMuonSachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ql_muon_sach = ql_muon_saches(:one)
  end

  test "should get index" do
    get ql_muon_saches_url
    assert_response :success
  end

  test "should get new" do
    get new_ql_muon_sach_url
    assert_response :success
  end

  test "should create ql_muon_sach" do
    assert_difference("QlMuonSach.count") do
      post ql_muon_saches_url, params: { ql_muon_sach: { ghiChu: @ql_muon_sach.ghiChu, hoVaTen: @ql_muon_sach.hoVaTen, lop: @ql_muon_sach.lop, maHS: @ql_muon_sach.maHS, maSach: @ql_muon_sach.maSach, ngayMuon: @ql_muon_sach.ngayMuon, ngayTra: @ql_muon_sach.ngayTra, soBM: @ql_muon_sach.soBM, soNgay: @ql_muon_sach.soNgay, stt: @ql_muon_sach.stt, tenSach: @ql_muon_sach.tenSach, tenTacGia: @ql_muon_sach.tenTacGia, tt: @ql_muon_sach.tt, tuSach: @ql_muon_sach.tuSach } }
    end

    assert_redirected_to ql_muon_sach_url(QlMuonSach.last)
  end

  test "should show ql_muon_sach" do
    get ql_muon_sach_url(@ql_muon_sach)
    assert_response :success
  end

  test "should get edit" do
    get edit_ql_muon_sach_url(@ql_muon_sach)
    assert_response :success
  end

  test "should update ql_muon_sach" do
    patch ql_muon_sach_url(@ql_muon_sach), params: { ql_muon_sach: { ghiChu: @ql_muon_sach.ghiChu, hoVaTen: @ql_muon_sach.hoVaTen, lop: @ql_muon_sach.lop, maHS: @ql_muon_sach.maHS, maSach: @ql_muon_sach.maSach, ngayMuon: @ql_muon_sach.ngayMuon, ngayTra: @ql_muon_sach.ngayTra, soBM: @ql_muon_sach.soBM, soNgay: @ql_muon_sach.soNgay, stt: @ql_muon_sach.stt, tenSach: @ql_muon_sach.tenSach, tenTacGia: @ql_muon_sach.tenTacGia, tt: @ql_muon_sach.tt, tuSach: @ql_muon_sach.tuSach } }
    assert_redirected_to ql_muon_sach_url(@ql_muon_sach)
  end

  test "should destroy ql_muon_sach" do
    assert_difference("QlMuonSach.count", -1) do
      delete ql_muon_sach_url(@ql_muon_sach)
    end

    assert_redirected_to ql_muon_saches_url
  end
end
