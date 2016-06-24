class ActivitiesController < ApplicationController
  before_action :require_admin, except: [:show, :index]
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :get_entities, only: [:show, :edit, :new]

  # GET /activities
  # GET /activities.json
  def index
      if params[:tag]
        begin
          @activities = Activity.tagged_with(params[:tag])
        rescue ActiveRecord::RecordNotFound => e
          @activities = nil
        end
        
      else
        @activities = Activity.all
  end
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
  end

  # GET /activities/new
  def new
    @activity = Activity.new
  end

  # GET /activities/1/edit
  def edit
    @tags = Activity.find(params[:id]).tags
    #@tags = Tag.list_from_activity(params[:id])
  end

  # POST /activities
  # POST /activities.json
  def create
    @activity = Activity.new(activity_params)

    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activity, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @activity }
      else
        format.html { render :new }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activities/1
  # PATCH/PUT /activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
          format.html { redirect_to @activity, notice: 'Activity was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:name, :owner, :timestamps, :entity_ids, :image, :intro, :description, :content, :tag_list)
    end
    
end
