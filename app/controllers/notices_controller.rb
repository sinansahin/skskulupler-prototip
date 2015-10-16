# encoding: utf-8
class NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :new, :destroy, :create]


  def index
    @notices = Notice.all
  end


  def show
    @club = Club.find_by_id(@notice.club_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_params
      params.require(:notice).permit(:club_id, :title, :content, :avatar)
    end
end
