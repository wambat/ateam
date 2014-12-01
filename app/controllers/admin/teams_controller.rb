class Admin::TeamsController < Admin::SpaceController
  before_action :set_admin_team, only: [:show, :edit, :update, :destroy]

  # GET /admin/teams
  # GET /admin/teams.json
  def index
    @admin_teams = Admin::Team.all
  end

  # GET /admin/teams/1
  # GET /admin/teams/1.json
  def show
  end

  # GET /admin/teams/new
  def new
    @admin_team = Admin::Team.new
  end

  # GET /admin/teams/1/edit
  def edit
  end

  # POST /admin/teams
  # POST /admin/teams.json
  def create
    @admin_team = Admin::Team.new(admin_team_params)

    respond_to do |format|
      if @admin_team.save
        format.html { redirect_to @admin_team, notice: 'Team was successfully created.' }
        format.json { render :show, status: :created, location: @admin_team }
      else
        format.html { render :new }
        format.json { render json: @admin_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/teams/1
  # PATCH/PUT /admin/teams/1.json
  def update
    respond_to do |format|
      if @admin_team.update(admin_team_params)
        format.html { redirect_to @admin_team, notice: 'Team was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_team }
      else
        format.html { render :edit }
        format.json { render json: @admin_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/teams/1
  # DELETE /admin/teams/1.json
  def destroy
    @admin_team.destroy
    respond_to do |format|
      format.html { redirect_to admin_teams_url, notice: 'Team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_team
      @admin_team = Admin::Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_team_params
      params[:admin_team]
    end
end
