class Admin::TeamsController < Admin::SpaceController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /admin/teams
  # GET /admin/teams.json
  def index
    @teams = Team.all
  end

  # GET /admin/teams/1
  # GET /admin/teams/1.json
  def show
  end

  # GET /admin/teams/new
  def new
    @team = Team.new
  end

  # GET /admin/teams/1/edit
  def edit
  end

  # POST /admin/teams
  # POST /admin/teams.json
  def create
    @team = Team.new(team_params)
    respond_to do |format|
      if @team.save
        format.html { redirect_to admin_teams_path, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @team }
      else
        format.html { render :new }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/teams/1
  # PATCH/PUT /admin/teams/1.json
  def update
    respond_to do |format|
      if @team.update(team_params)
        format.html { redirect_to admin_teams_path, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @team }
      else
        format.html { render :edit }
        format.json { render json: @team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/teams/1
  # DELETE /admin/teams/1.json
  def destroy
    @team.destroy
    respond_to do |format|
      format.html { redirect_to admin_teams_path, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, mutant_ids: [], task_ids: [])
    end
end
