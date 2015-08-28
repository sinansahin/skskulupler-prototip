# encoding: utf-8
class Admin::NoticesController < ApplicationController
  layout 'admin'
  before_action :set_notice, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :new, :destroy, :create]
  
  # GET /notices
  # GET /notices.json
  def index
    @notices = Notice.all
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
  end
  
  #def users
  #end

  # GET /notices/new
  def new
    @notice = Notice.new
  end

  # GET /notices/1/edit
  def edit
  end

  # POST /notices
  # POST /notices.json
  def create
    @notice = Notice.new(notice_params)

    respond_to do |format|
      if @notice.save
        format.html { redirect_to admin_notices_path, notice: 'Notice was successfully created.' }
        format.json { render :show, status: :created, location: admin_notices_path }
      else
        format.html { render :new }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notices/1
  # PATCH/PUT /notices/1.json
  def update
    respond_to do |format|
      if @notice.update(notice_params)
        format.html { redirect_to admin_notices_path, notice: 'Notice was successfully updated.' }
        format.json { render :show, status: :ok, location: admin_notices_path }
      else
        format.html { render :edit }
        format.json { render json: @notice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notices/1
  # DELETE /notices/1.json
  def destroy
    @notice.destroy
    respond_to do |format|
      format.html { redirect_to admin_notices_path, notice: 'Notice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    #pundit eklenince eklencek
    #def permission_denied
     # redirect_to(request.referrer || root_path, alert: "Bu sayfayı görüntüleme yetkiniz bulunmamaktadır.")
    #end    

    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
      authorize @notice
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_params
      params.require(:notice).permit(:title, :content, :club_id, :avatar)
    end
end
