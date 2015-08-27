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

      @uyemi = ClubRole.where(user_id: current_user.id).present?

    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_club
    @club = Club.find(params[:id])
  end
end
