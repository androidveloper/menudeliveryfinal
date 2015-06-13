class TipoplatosController < ApplicationController
  before_action :set_tipoplato, only: [:show, :edit, :update, :destroy]

  # GET /tipoplatos
  # GET /tipoplatos.json
  def index
    @tipoplatos = Tipoplato.all
  end

  # GET /tipoplatos/1
  # GET /tipoplatos/1.json
  def show
  end

  # GET /tipoplatos/new
  def new
    @tipoplato = Tipoplato.new
  end

  # GET /tipoplatos/1/edit
  def edit
  end

  # POST /tipoplatos
  # POST /tipoplatos.json
  def create
    @tipoplato = Tipoplato.new(tipoplato_params)

    respond_to do |format|
      if @tipoplato.save
        format.html { redirect_to @tipoplato, notice: 'Tipoplato was successfully created.' }
        format.json { render :show, status: :created, location: @tipoplato }
      else
        format.html { render :new }
        format.json { render json: @tipoplato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoplatos/1
  # PATCH/PUT /tipoplatos/1.json
  def update
    respond_to do |format|
      if @tipoplato.update(tipoplato_params)
        format.html { redirect_to @tipoplato, notice: 'Tipoplato was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipoplato }
      else
        format.html { render :edit }
        format.json { render json: @tipoplato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoplatos/1
  # DELETE /tipoplatos/1.json
  def destroy
    @tipoplato.destroy
    respond_to do |format|
      format.html { redirect_to tipoplatos_url, notice: 'Tipoplato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoplato
      @tipoplato = Tipoplato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoplato_params
      params.require(:tipoplato).permit(:name, :description, :codigo)
    end
end
