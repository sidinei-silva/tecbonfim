class ApresentacaoDoisController < ApplicationController
  before_action :set_apresentacao_doi, only: [:show, :edit, :update, :destroy]

  # GET /apresentacao_dois
  # GET /apresentacao_dois.json
  def index
    @apresentacao_dois = ApresentacaoDoi.find(1)
  end

  # GET /apresentacao_dois/1
  # GET /apresentacao_dois/1.json
  def show
  end

  # GET /apresentacao_dois/new
  def new
    @apresentacao_doi = ApresentacaoDoi.new
  end

  # GET /apresentacao_dois/1/edit
  def edit
  end

  # POST /apresentacao_dois
  # POST /apresentacao_dois.json
  def create
    @apresentacao_doi = ApresentacaoDoi.new(apresentacao_doi_params)

    respond_to do |format|
      if @apresentacao_doi.save
        format.html { redirect_to @apresentacao_doi, notice: 'Apresentacao doi was successfully created.' }
        format.json { render :show, status: :created, location: @apresentacao_doi }
      else
        format.html { render :new }
        format.json { render json: @apresentacao_doi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apresentacao_dois/1
  # PATCH/PUT /apresentacao_dois/1.json
  def update
    respond_to do |format|
      if @apresentacao_doi.update(apresentacao_doi_params)
        format.html { redirect_to @apresentacao_doi, notice: 'Apresentacao doi was successfully updated.' }
        format.json { render :show, status: :ok, location: @apresentacao_doi }
      else
        format.html { render :edit }
        format.json { render json: @apresentacao_doi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apresentacao_dois/1
  # DELETE /apresentacao_dois/1.json
  def destroy
    @apresentacao_doi.destroy
    respond_to do |format|
      format.html { redirect_to apresentacao_dois_url, notice: 'Apresentacao doi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apresentacao_doi
      @apresentacao_doi = ApresentacaoDoi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apresentacao_doi_params
      params.require(:apresentacao_doi).permit(:descricao)
    end
end
