class CheckattendancesController < ApplicationController
  before_action :set_checkattendance, only: [:show, :edit, :update, :destroy]

  # GET /checkattendances
  # GET /checkattendances.json
  def index
    @checkattendances = EmployesAttendance.all
  end

  # GET /checkattendances/1
  # GET /checkattendances/1.json
  def show
  end

  # GET /checkattendances/new
  def new
    @checkattendance = EmployesAttendance.new
  end

  # GET /checkattendances/1/edit
  def edit
  end

  # POST /checkattendances
  # POST /checkattendances.json
  def create
    @checkattendance = EmployesAttendance.new(checkattendance_params)

    respond_to do |format|
      if @checkattendance.save
        format.html { redirect_to @checkattendance, notice: 'Checkattendance was successfully created.' }
        format.json { render :show, status: :created, location: @checkattendance }
      else
        format.html { render :new }
        format.json { render json: @checkattendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /checkattendances/1
  # PATCH/PUT /checkattendances/1.json
  def update
    respond_to do |format|
      if @checkattendance.update(checkattendance_params)
        format.html { redirect_to @checkattendance, notice: 'Checkattendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @checkattendance }
      else
        format.html { render :edit }
        format.json { render json: @checkattendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkattendances/1
  # DELETE /checkattendances/1.json
  def destroy
    @checkattendance.destroy
    respond_to do |format|
      format.html { redirect_to checkattendances_url, notice: 'Checkattendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_checkattendance
      @checkattendance = EmployesAttendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def checkattendance_params
      params.fetch(:checkattendance, {})
    end
end
