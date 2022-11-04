require "application_system_test_case"

class QlMuonSachesTest < ApplicationSystemTestCase
  setup do
    @ql_muon_sach = ql_muon_saches(:one)
  end

  test "visiting the index" do
    visit ql_muon_saches_url
    assert_selector "h1", text: "Ql muon saches"
  end

  test "should create ql muon sach" do
    visit ql_muon_saches_url
    click_on "New ql muon sach"

    fill_in "Ghichu", with: @ql_muon_sach.ghiChu
    fill_in "Hovaten", with: @ql_muon_sach.hoVaTen
    fill_in "Lop", with: @ql_muon_sach.lop
    fill_in "Mahs", with: @ql_muon_sach.maHS
    fill_in "Masach", with: @ql_muon_sach.maSach
    fill_in "Ngaymuon", with: @ql_muon_sach.ngayMuon
    fill_in "Ngaytra", with: @ql_muon_sach.ngayTra
    fill_in "Sobm", with: @ql_muon_sach.soBM
    fill_in "Songay", with: @ql_muon_sach.soNgay
    fill_in "Stt", with: @ql_muon_sach.stt
    fill_in "Tensach", with: @ql_muon_sach.tenSach
    fill_in "Tentacgia", with: @ql_muon_sach.tenTacGia
    fill_in "Tt", with: @ql_muon_sach.tt
    fill_in "Tusach", with: @ql_muon_sach.tuSach
    click_on "Create Ql muon sach"

    assert_text "Ql muon sach was successfully created"
    click_on "Back"
  end

  test "should update Ql muon sach" do
    visit ql_muon_sach_url(@ql_muon_sach)
    click_on "Edit this ql muon sach", match: :first

    fill_in "Ghichu", with: @ql_muon_sach.ghiChu
    fill_in "Hovaten", with: @ql_muon_sach.hoVaTen
    fill_in "Lop", with: @ql_muon_sach.lop
    fill_in "Mahs", with: @ql_muon_sach.maHS
    fill_in "Masach", with: @ql_muon_sach.maSach
    fill_in "Ngaymuon", with: @ql_muon_sach.ngayMuon
    fill_in "Ngaytra", with: @ql_muon_sach.ngayTra
    fill_in "Sobm", with: @ql_muon_sach.soBM
    fill_in "Songay", with: @ql_muon_sach.soNgay
    fill_in "Stt", with: @ql_muon_sach.stt
    fill_in "Tensach", with: @ql_muon_sach.tenSach
    fill_in "Tentacgia", with: @ql_muon_sach.tenTacGia
    fill_in "Tt", with: @ql_muon_sach.tt
    fill_in "Tusach", with: @ql_muon_sach.tuSach
    click_on "Update Ql muon sach"

    assert_text "Ql muon sach was successfully updated"
    click_on "Back"
  end

  test "should destroy Ql muon sach" do
    visit ql_muon_sach_url(@ql_muon_sach)
    click_on "Destroy this ql muon sach", match: :first

    assert_text "Ql muon sach was successfully destroyed"
  end
end
