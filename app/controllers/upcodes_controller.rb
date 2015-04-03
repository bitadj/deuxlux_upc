class UpcodesController < ApplicationController
  before_action :set_upcode, only: [:show, :edit, :update, :destroy]

  # GET /upcodes
  # GET /upcodes.json
  def index
    @upcodes = Upcode.all
  end

  # GET /upcodes/1
  # GET /upcodes/1.json
  def show
  end

  # GET /upcodes/new
  def new
    @upcode = Upcode.new
  end

  # GET /upcodes/1/edit
  def edit
  end

  # POST /upcodes
  # POST /upcodes.json
  def create
    @upcode = Upcode.new(upcode_params)

    respond_to do |format|
      if @upcode.save
        format.html { redirect_to @upcode, notice: 'Upcode was successfully created.' }
        format.json { render :show, status: :created, location: @upcode }
      else
        format.html { render :new }
        format.json { render json: @upcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upcodes/1
  # PATCH/PUT /upcodes/1.json
  def update
    respond_to do |format|
      if @upcode.update(upcode_params)
        format.html { redirect_to @upcode, notice: 'Upcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @upcode }
      else
        format.html { render :edit }
        format.json { render json: @upcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upcodes/1
  # DELETE /upcodes/1.json
  def destroy
    @upcode.destroy
    respond_to do |format|
      format.html { redirect_to upcodes_url, notice: 'Upcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upcode
      @upcode = Upcode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upcode_params
      params.require(:upcode).permit(:upc, :style_id)
    end
end
