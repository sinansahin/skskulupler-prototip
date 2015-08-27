# encoding: utf-8

class Admin::InfosController < ApplicationController
  layout 'admin'
  before_action :set_infos, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  rescue_from Pundit::NotAuthorizedError, with: :permission_denied
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  # GET /informations
  # GET /informations.json
  def index
    @infos = Info.all
    authorize @infos
  end

  # GET /infos/1
  # GET /infos/1.json
  def show
  end
  
  #def users
  #end

  # GET /infos/new
  def new
    @info = Info.new
    authorize @info
  end

  # GET /infos/1/edit
  def edit
  end

  # POST /infos
  # POST /infos.json
  def create
    @info = Info.new(info_params)
    authorize @info
    respond_to do |format|
      if @info.save
        format.html { redirect_to admin_infos_path, notice: 'Club was successfully created.' }
        format.json { render :show, status: :created, location: admin_infos_path }
      else
        format.html { render :new }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infos/1
  # PATCH/PUT /infos/1.json
  def update
    respond_to do |format|
      if @info.update(info_params)
        format.html { redirect_to admin_infos_path, notice: 'Club was successfully updated.' }
        format.json { render :show, status: :ok, location: admin_infos_path }
      else
        format.html { render :edit }
        format.json { render json: @info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infos/1
  # DELETE /infos/1.json
  def destroy
    @info.destroy
    respond_to do |format|
      format.html { redirect_to admin_infos_path, notice: 'Club was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def permission_denied
      redirect_to(request.referrer || root_path, alert: "Bu sayfayı görüntüleme yetkiniz bulunmamaktadır.")
    end    

    # Use callbacks to share common setup or constraints between actions.
    def set_infos
      @info = Info.find(params[:id])
      authorize @info
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def info_params
      params.require(:info).permit(:title, :content, :image)
    end
end
