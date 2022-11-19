class SynergiesController < ApplicationController
  before_action :set_synergy, only: %i[ show edit update destroy ]

  # GET /synergies or /synergies.json
  def index
    @synergies = Synergy.all
  end

  # GET /synergies/1 or /synergies/1.json
  def show
  end

  # GET /synergies/new
  def new
    @synergy = Synergy.new
  end

  # GET /synergies/1/edit
  def edit
  end

  # POST /synergies or /synergies.json
  def create
    @synergy = Synergy.new(synergy_params)

    respond_to do |format|
      if @synergy.save
        format.html { redirect_to synergy_url(@synergy), notice: "Synergy was successfully created." }
        format.json { render :show, status: :created, location: @synergy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @synergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /synergies/1 or /synergies/1.json
  def update
    respond_to do |format|
      if @synergy.update(synergy_params)
        format.html { redirect_to synergy_url(@synergy), notice: "Synergy was successfully updated." }
        format.json { render :show, status: :ok, location: @synergy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @synergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /synergies/1 or /synergies/1.json
  def destroy
    @synergy.destroy

    respond_to do |format|
      format.html { redirect_to synergies_url, notice: "Synergy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_synergy
      @synergy = Synergy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def synergy_params
      params.require(:synergy).permit(:s_name, :s_image, :s_count)
    end
end
