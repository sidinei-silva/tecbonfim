class SobresController < ApplicationController
  before_action :set_sobre, only: [:show, :edit, :update, :destroy]

  # GET /sobres
  # GET /sobres.json
  def index
    @sobres = Sobre.all
  end

  # GET /sobres/1
  # GET /sobres/1.json
  def show
  end

  # GET /sobres/new
  def new
    @sobre = Sobre.new
  end

  # GET /sobres/1/edit
  def edit
  end

  # POST /sobres
  # POST /sobres.json
  def create
    @sobre = Sobre.new(sobre_params)

    respond_to do |format|
      if @sobre.save
        format.html { redirect_to @sobre, notice: 'Sobre was successfully created.' }
        format.json { render :show, status: :created, location: @sobre }
      else
        format.html { render :new }
        format.json { render json: @sobre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sobres/1
  # PATCH/PUT /sobres/1.json
  def update
    respond_to do |format|
      if @sobre.update(sobre_params)
        format.html { redirect_to @sobre, notice: 'Sobre was successfully updated.' }
        format.json { render :show, status: :ok, location: @sobre }
      else
        format.html { render :edit }
        format.json { render json: @sobre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sobres/1
  # DELETE /sobres/1.json
  def destroy
    @sobre.destroy
    respond_to do |format|
      format.html { redirect_to sobres_url, notice: 'Sobre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sobre
      @sobre = Sobre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sobre_params
      params.require(:sobre).permit(:descricao)
    end
end
