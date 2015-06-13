class TipomenusController < ApplicationController
  before_action :set_tipomenu, only: [:show, :edit, :update, :destroy]

  # GET /tipomenus
  # GET /tipomenus.json
  def index
    @tipomenus = Tipomenu.all
  end

  # GET /tipomenus/1
  # GET /tipomenus/1.json
  def show
  end

  # GET /tipomenus/new
  def new
    @tipomenu = Tipomenu.new
  end

  # GET /tipomenus/1/edit
  def edit
  end

  # POST /tipomenus
  # POST /tipomenus.json
  def create
    @tipomenu = Tipomenu.new(tipomenu_params)

    respond_to do |format|
      if @tipomenu.save
        format.html { redirect_to @tipomenu, notice: 'Tipomenu was successfully created.' }
        format.json { render :show, status: :created, location: @tipomenu }
      else
        format.html { render :new }
        format.json { render json: @tipomenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipomenus/1
  # PATCH/PUT /tipomenus/1.json
  def update
    respond_to do |format|
      if @tipomenu.update(tipomenu_params)
        format.html { redirect_to @tipomenu, notice: 'Tipomenu was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipomenu }
      else
        format.html { render :edit }
        format.json { render json: @tipomenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipomenus/1
  # DELETE /tipomenus/1.json
  def destroy
    @tipomenu.destroy
    respond_to do |format|
      format.html { redirect_to tipomenus_url, notice: 'Tipomenu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipomenu
      @tipomenu = Tipomenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipomenu_params
      params.require(:tipomenu).permit(:name, :description, :codigo)
    end
end
