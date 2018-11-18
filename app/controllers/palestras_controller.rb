class PalestrasController < ApplicationController
  before_action :set_palestra, only: [:show, :edit, :update, :destroy]

  # GET /palestras
  # GET /palestras.json
  def index
    @palestras = Palestra.all
  end

  # GET /palestras/1
  # GET /palestras/1.json
  def show
  end

  # GET /palestras/new
  def new
    @palestra = Palestra.new
  end

  # GET /palestras/1/edit
  def edit
  end

  # POST /palestras
  # POST /palestras.json
  def create
    @palestra = Palestra.new(palestra_params)

    respond_to do |format|
      if @palestra.save
        format.html { redirect_to @palestra, notice: 'Palestra was successfully created.' }
        format.json { render :show, status: :created, location: @palestra }
      else
        format.html { render :new }
        format.json { render json: @palestra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palestras/1
  # PATCH/PUT /palestras/1.json
  def update
    respond_to do |format|
      if @palestra.update(palestra_params)
        format.html { redirect_to @palestra, notice: 'Palestra was successfully updated.' }
        format.json { render :show, status: :ok, location: @palestra }
      else
        format.html { render :edit }
        format.json { render json: @palestra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palestras/1
  # DELETE /palestras/1.json
  def destroy
    @palestra.destroy
    respond_to do |format|
      format.html { redirect_to palestras_url, notice: 'Palestra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palestra
      @palestra = Palestra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palestra_params
      params.require(:palestra).permit(:palestrante, :email_palestrante, :titulo_palestra, :desc_palestra, :dia_palestra, :hora_palestra)
    end
end
