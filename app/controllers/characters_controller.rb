class CharactersController < ApplicationController
  before_action :set_character, only: %i[ show edit update destroy ]

  # GET /characters or /characters.json
  def index
    @characters = Character.all
	  
	@synergies = Synergy.all
	  
	@tool_lists = Tool.all
	  
	@tool_synergy = []
	  
	@tool_lists.each do |tool| 
		@tool_synergy.push(Character.find(tool.character_id).synergy)
		@tool_synergy.push(Character.find(tool.character_id).synergy2)
		@tool_synergy.push(Character.find(tool.character_id).synergy3)
	end
	
	# @synergies.each do |ss|
	# 	ss.s_count = 0
	# end
	  
	# @synergies_1 = 0
	# @synergies_2 = 0
	# @synergies_3 = 0
	# @synergies_4 = 0
	# @synergies_5 = 0
	# @synergies_6 = 0
	# @synergies_7 = 0
	# @synergies_8 = 0
	# @synergies_9 = 0
	# @synergies_10 = 0
	# @synergies_11 = 0
	# @synergies_12 = 0
	# @synergies_13 = 0
	  
	
	@synergies.each do |ss|
		ss.s_count = 0
	end
	  
	
	@synergies.each do |synergy|
		@tool_synergy.each do |s|
			if synergy.s_name == s
				synergy.s_count = synergy.s_count+1
			end
		end
	end
  end

  # GET /characters/1 or /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end
	


  # POST /characters or /characters.json
  def create
    @character = Character.new(character_params)

    respond_to do |format|
      if @character.save
        format.html { redirect_to character_url(@character), notice: "Character was successfully created." }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1 or /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to character_url(@character), notice: "Character was successfully updated." }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1 or /characters/1.json
  def destroy
    @character.destroy

    respond_to do |format|
      format.html { redirect_to characters_url, notice: "Character was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_params
      params.require(:character).permit(:name, :synergy, :synergy2, :synergy3, :cost, :avatar)
    end
end
