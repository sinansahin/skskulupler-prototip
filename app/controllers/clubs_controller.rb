class ClubsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :new, :destroy, :create]
  
  # GET /clubs
  # GET /clubs.json
  def index
    @clubs = Club.all
  end

  # GET /clubs/1
  # GET /clubs/1.json
  def show
  end

end
