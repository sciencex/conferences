class DivsionsController < ApplicationController
  before_action :set_divsion, only: [:show, :edit, :update, :destroy]

  # GET /divsions
  # GET /divsions.json
  def index
    @divsions = Divsion.all
  end

  # GET /divsions/1
  # GET /divsions/1.json
  def show
    @division = Division.find(params[:id])
    @teams = @division.teams
  end

  # GET /divsions/new
  def new
    @conference = Conference.find(params[:conference_id])
    @divsion = Divsion.new
    division.conference = @conference
  end

  # GET /divsions/1/edit
  def edit
    @conference = Conference.find(params[:conference_id])
    @division = Division.find(params[:id])
    @division.conference = @conference
  end

  # POST /divsions
  # POST /divsions.json
  def create
    @conference = Conference.find(params[:conference_id])
   # @division = Division.find(params[:id])
    @divsion = Divsion.new(divsion_params)
    @division.conference = @conference

    respond_to do |format|
      if @divsion.save
        format.html { redirect_to @divsion, notice: 'Divsion was successfully created.' }
        format.json { render action: 'show', status: :created, location: @divsion }
      else
        format.html { render action: 'new' }
        format.json { render json: @divsion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /divsions/1
  # PATCH/PUT /divsions/1.json
  def update
    respond_to do |format|
      if @divsion.update(divsion_params)
        format.html { redirect_to @divsion, notice: 'Divsion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @divsion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /divsions/1
  # DELETE /divsions/1.json
  def destroy
    @divsion.destroy
    respond_to do |format|
      format.html { redirect_to divsions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_divsion
      @divsion = Divsion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def divsion_params
      params.require(:divsion).permit(:name)
    end
end
