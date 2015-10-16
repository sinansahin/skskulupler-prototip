# encoding: utf-8

class Admin::ClubsController < ApplicationController
  layout 'admin'
  before_action :set_club, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  rescue_from Pundit::NotAuthorizedError, with: :permission_denied
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Club.all
    authorize @clubs
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
  end
  
  #def users
  #end

  # GET /clubs/new
  def new
    @club = Club.new
    authorize @club
  end

  # GET /clubs/1/edit
  def edit
  end

  # POST /clubs
  # POST /clubs.json
  def create
    @club = Club.new(club_params)
    authorize @club
    respond_to do |format|
      if @club.save
        format.html { redirect_to admin_clubs_path, notice: 'Kulüp oluşturuldu.' }
        format.json { render :show, status: :created, location: admin_clubs_path }
      else
        format.html { render :new }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubs/1
  # PATCH/PUT /clubs/1.json
  def update
    respond_to do |format|
      if @club.update(club_params)
        format.html { redirect_to admin_clubs_path, notice: 'Kulüp düzenlendi.' }
        format.json { render :show, status: :ok, location: admin_clubs_path }
      else
        format.html { render :edit }
        format.json { render json: @club.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubs/1
  # DELETE /clubs/1.json
  def destroy
    @club.destroy
    respond_to do |format|
      format.html { redirect_to admin_clubs_path, notice: 'Kulüp silindi.' }
      format.json { head :no_content }
    end
  end

  private

    def permission_denied
      redirect_to(request.referrer || root_path, alert: "Bu sayfayı görüntüleme yetkiniz bulunmamaktadır.")
    end    

    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def club_params
      params.require(:club).permit(:name, :logo, :supervisor, :regulation, :description, :email, :avatar, :president, :vice_president, :secretery, :treasurer, :founder_member_1, :founder_member_2)
    end
end
