class CathegoriesController < ApplicationController
  before_action :set_cathegory, only: %i[ show edit update destroy ]

  # GET /cathegories or /cathegories.json
  def index
    @cathegories = Cathegory.all
  end

  # GET /cathegories/1 or /cathegories/1.json
  def show
  end

  # GET /cathegories/new
  def new
    @cathegory = Cathegory.new
  end

  # GET /cathegories/1/edit
  def edit
  end

  # POST /cathegories or /cathegories.json
  def create
    @cathegory = Cathegory.new(cathegory_params)

    respond_to do |format|
      if @cathegory.save
        format.html { redirect_to cathegory_url(@cathegory), notice: "Cathegory was successfully created." }
        format.json { render :show, status: :created, location: @cathegory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cathegory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cathegories/1 or /cathegories/1.json
  def update
    respond_to do |format|
      if @cathegory.update(cathegory_params)
        format.html { redirect_to cathegory_url(@cathegory), notice: "Cathegory was successfully updated." }
        format.json { render :show, status: :ok, location: @cathegory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cathegory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cathegories/1 or /cathegories/1.json
  def destroy
    @cathegory.destroy

    respond_to do |format|
      format.html { redirect_to cathegories_url, notice: "Cathegory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cathegory
      @cathegory = Cathegory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cathegory_params
      params.require(:cathegory).permit(:icon, :title, :description, :user_id)
    end
end
