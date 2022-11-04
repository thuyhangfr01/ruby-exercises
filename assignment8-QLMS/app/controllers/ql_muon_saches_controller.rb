class QlMuonSachesController < ApplicationController
  before_action :set_ql_muon_sach, only: %i[ show edit update destroy ]

  # GET /ql_muon_saches or /ql_muon_saches.json
  def index
    @ql_muon_saches = QlMuonSach.all
  end

  # GET /ql_muon_saches/1 or /ql_muon_saches/1.json
  def show
  end

  # GET /ql_muon_saches/new
  def new
    @ql_muon_sach = QlMuonSach.new
  end

  # GET /ql_muon_saches/1/edit
  def edit
  end

  # POST /ql_muon_saches or /ql_muon_saches.json
  def create
    @ql_muon_sach = QlMuonSach.new(ql_muon_sach_params)

    respond_to do |format|
      if @ql_muon_sach.save
        format.html { redirect_to ql_muon_sach_url(@ql_muon_sach), notice: "Ql muon sach was successfully created." }
        format.json { render :show, status: :created, location: @ql_muon_sach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ql_muon_sach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ql_muon_saches/1 or /ql_muon_saches/1.json
  def update
    respond_to do |format|
      if @ql_muon_sach.update(ql_muon_sach_params)
        format.html { redirect_to ql_muon_sach_url(@ql_muon_sach), notice: "Ql muon sach was successfully updated." }
        format.json { render :show, status: :ok, location: @ql_muon_sach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ql_muon_sach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ql_muon_saches/1 or /ql_muon_saches/1.json
  def destroy
    @ql_muon_sach.destroy

    respond_to do |format|
      format.html { redirect_to ql_muon_saches_url, notice: "Ql muon sach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ql_muon_sach
      @ql_muon_sach = QlMuonSach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ql_muon_sach_params
      params.require(:ql_muon_sach).permit(:tt, :stt, :maHS, :hoVaTen, :lop, :maSach, :tenSach, :tenTacGia, :tuSach, :soBM, :ngayMuon, :ngayTra, :soNgay, :ghiChu)
    end
end
