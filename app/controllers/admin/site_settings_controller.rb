class Admin::SiteSettingsController < Admin::SpaceController
  # GET /admin/vehicle_classes
  # GET /admin/vehicle_classes.json
  def index
    
      @site_settings = SiteSetting.all
    

    respond_to do |format|
      format.html # index.haml
      format.json { render json: @site_settings }
    end
  end

  # GET /admin/vehicle_classes/1
  # GET /admin/vehicle_classes/1.json
  def show
    @site_setting = SiteSetting.find(safe_params[:id])

    respond_to do |format|
      format.html # show.haml
      format.json { render json: @site_setting }
    end
  end

  # GET /admin/vehicle_classes/new
  # GET /admin/vehicle_classes/new.json
  def new
    @site_setting = SiteSetting.new

    respond_to do |format|
      format.html # new.haml
      format.json { render json: @site_setting }
    end
  end

  # GET /admin/vehicle_classes/1/edit
  def edit
    @site_setting = SiteSetting.find(safe_params[:id])
  end

  # POST /admin/vehicle_classes
  # POST /admin/vehicle_classes.json
  def create
    @site_setting = SiteSetting.new(safe_params[:site_setting])
    

    respond_to do |format|
      if @site_setting.save
        format.html { redirect_to admin_site_settings_path(), notice: 'SiteSetting was successfully created.' }
        format.json { render json: @site_setting, status: :created, location: @site_setting }
      else
        format.html { render action: "new" }
        format.json { render json: @site_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/vehicle_classes/1
  # PUT /admin/vehicle_classes/1.json
  def update
    @site_setting = SiteSetting.find(safe_params[:id])

    respond_to do |format|
      if @site_setting.update_attributes(safe_params[:site_setting])
        format.html { redirect_to admin_site_settings_path(), notice: 'SiteSetting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @site_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/vehicle_classes/1
  # DELETE /admin/vehicle_classes/1.json
  def destroy
    @site_setting = SiteSetting.find(safe_params[:id])
    @site_setting.destroy

    respond_to do |format|
      format.html { redirect_to admin_site_settings_path()}
      format.json { head :no_content }
    end
  end
	private
	def safe_params
		params.permit!
	end
end
