class TipomenutestsController < ApplicationController
  before_action :set_tipomenutest, only: [:show, :edit, :update, :destroy]

  # GET /tipomenutests
  # GET /tipomenutests.json
  def index
    @tipomenutests = Tipomenutest.all
  end

  # GET /tipomenutests/1
  # GET /tipomenutests/1.json
  def show
  end

  # GET /tipomenutests/new
  def new
    @tipomenutest = Tipomenutest.new
  end

  # GET /tipomenutests/1/edit
  def edit
  end

  # POST /tipomenutests
  # POST /tipomenutests.json
  def create
    @tipomenutest = Tipomenutest.new(tipomenutest_params)

    respond_to do |format|
      if @tipomenutest.save
        format.html { redirect_to @tipomenutest, notice: 'Tipomenutest was successfully created.' }
        format.json { render :show, status: :created, location: @tipomenutest }
      else
        format.html { render :new }
        format.json { render json: @tipomenutest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipomenutests/1
  # PATCH/PUT /tipomenutests/1.json
  def update
    respond_to do |format|
      if @tipomenutest.update(tipomenutest_params)
        format.html { redirect_to @tipomenutest, notice: 'Tipomenutest was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipomenutest }
      else
        format.html { render :edit }
        format.json { render json: @tipomenutest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipomenutests/1
  # DELETE /tipomenutests/1.json
  def destroy
    @tipomenutest.destroy
    respond_to do |format|
      format.html { redirect_to tipomenutests_url, notice: 'Tipomenutest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipomenutest
      @tipomenutest = Tipomenutest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipomenutest_params
      params.require(:tipomenutest).permit(:name, :description)
    end
end
