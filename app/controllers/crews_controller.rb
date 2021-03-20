class CrewsController < ApplicationController
  before_action :set_crew, only: %i[ show edit update destroy ]
  before_action :set_band
  # GET /crews or /crews.json
  def index
    @crews = @band.crews
  end

  # GET /crews/1 or /crews/1.json
  def show
  end

  # GET /crews/new
  def new
    @crew = @band.crews.build
  end

  # GET /crews/1/edit
  def edit
  end

  # POST /crews or /crews.json
  def create
    @crew = @band.crews.build(crew_params)

    respond_to do |format|
      if @crew.save
        format.html { redirect_to [@band, @crew], notice: "Crew was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crews/1 or /crews/1.json
  def update
    respond_to do |format|
      if @crew.update(crew_params.merge(band: @band))
        format.html { redirect_to [@band, @crew], notice: "Crew was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crews/1 or /crews/1.json
  def destroy
    @crew.destroy
    respond_to do |format|
      format.html { redirect_to [@band, @crew], notice: "Crew was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crew
      @crew = Crew.find(params[:id])
    end

    def set_band
      @band = Band.find(params[:band_id])
    end

    # Only allow a list of trusted parameters through.
    def crew_params
      params.require(:crew).permit(:members_name)
    end
end
