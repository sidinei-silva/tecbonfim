class ApresentacaoUmsController < ApplicationController
  before_action :set_apresentacao_um, only: [:show, :edit, :update, :destroy]

  # GET /apresentacao_ums
  # GET /apresentacao_ums.json
  def index
    @apresentacao_ums = ApresentacaoUm.all
  end

  # GET /apresentacao_ums/1
  # GET /apresentacao_ums/1.json
  def show
  end

  # GET /apresentacao_ums/new
  def new
    @apresentacao_um = ApresentacaoUm.new
  end

  # GET /apresentacao_ums/1/edit
  def edit
  end

  # POST /apresentacao_ums
  # POST /apresentacao_ums.json
  def create
    @apresentacao_um = ApresentacaoUm.new(apresentacao_um_params)

    respond_to do |format|
      if @apresentacao_um.save
        format.html { redirect_to @apresentacao_um, notice: 'Apresentacao um was successfully created.' }
        format.json { render :show, status: :created, location: @apresentacao_um }
      else
        format.html { render :new }
        format.json { render json: @apresentacao_um.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apresentacao_ums/1
  # PATCH/PUT /apresentacao_ums/1.json
  def update
    respond_to do |format|
      if @apresentacao_um.update(apresentacao_um_params)
        format.html { redirect_to @apresentacao_um, notice: 'Apresentacao um was successfully updated.' }
        format.json { render :show, status: :ok, location: @apresentacao_um }
      else
        format.html { render :edit }
        format.json { render json: @apresentacao_um.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apresentacao_ums/1
  # DELETE /apresentacao_ums/1.json
  def destroy
    @apresentacao_um.destroy
    respond_to do |format|
      format.html { redirect_to apresentacao_ums_url, notice: 'Apresentacao um was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apresentacao_um
      @apresentacao_um = ApresentacaoUm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apresentacao_um_params
      params.require(:apresentacao_um).permit(:descricao)
    end
end
