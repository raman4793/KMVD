class VehicleFinesController < ApplicationController
  before_action :set_vehicle_fine, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, except: [:index]

  # GET /vehicle_fines
  # GET /vehicle_fines.json
  def index
    @vehicle_fines = VehicleFine.all
  end

  # GET /vehicle_fines/1
  # GET /vehicle_fines/1.json
  def show
  end

  # GET /vehicle_fines/new
  def new
    @vehicle_fine = VehicleFine.new
  end

  # GET /vehicle_fines/1/edit
  def edit
  end

  # POST /vehicle_fines
  # POST /vehicle_fines.json
  def create
    @vehicle_fine = VehicleFine.new(vehicle_fine_params)
    respond_to do |format|
      if @vehicle_fine.save
        format.html { redirect_to @vehicle_fine, notice: 'Vehicle fine was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_fine }
      else
        format.html { render :new }
        format.json { render json: @vehicle_fine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_fines/1
  # PATCH/PUT /vehicle_fines/1.json
  def update
    respond_to do |format|
      if @vehicle_fine.update(vehicle_fine_params)
        format.html { redirect_to @vehicle_fine, notice: 'Vehicle fine was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_fine }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_fine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_fines/1
  # DELETE /vehicle_fines/1.json
  def destroy
    @vehicle_fine.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_fines_url, notice: 'Vehicle fine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_fine
      @vehicle_fine = VehicleFine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_fine_params
      params.require(:vehicle_fine).permit(:vehicle_id, :fine_id)
    end
end
