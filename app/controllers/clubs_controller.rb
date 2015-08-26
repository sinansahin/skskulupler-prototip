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
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_club
    @club = Club.find(params[:id])
  end
end
