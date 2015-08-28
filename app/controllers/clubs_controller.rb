# encoding: utf-8
class ClubsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :new, :destroy, :create]
  before_action :set_club, only: [:show]
  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Club.all
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
    @club_roles = ClubRole.new
    if user_signed_in?
      #user = User.find_by_id(current_user.id)

      @uyemi = ClubRole.where("user_id = ? AND club_id = ?", current_user.id, @club.id).present?
    end
    
    @TumUyeler = @club.club_roles
    @TumUyeler.each do |uye|
      if uye.role.name == "Başkan"
        @Baskan_id = uye.user_id
      elsif uye.role.name == "Başkan Yardımcısı"
        @BaskanYrd_id = uye.user_id
      elsif uye.role.name == "Yazman"
        @Yazman_id = uye.user_id
      elsif uye.role.name == "Sayman"
        @Sayman_id = uye.user_id
      end
    end


    
  

  end

  # Use callbacks to share common setup or constraints between actions.
  def set_club
    @club = Club.find(params[:id])
  end
end
