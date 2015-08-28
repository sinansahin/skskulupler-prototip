class ClubRolesController < ApplicationController
  def new
  end
  def create
  	
    @club_role = ClubRole.new(club_role_params)
    @club_role.user_id = current_user.id
    @club_role.role_id = Role.find_by_name('Topluluk Üyesi').id
    respond_to do |format|
      if @club_role.save
        format.html { redirect_to club_path(@club_role.club_id), notice: 'Topluluğa üye oldunuz.' }
        format.json { render :back, status: :created, location: @club_role }
      else
        format.html { render :back }
        format.json { render json: @club_role.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def club_role_params
      params.permit(:club_id)
    end
end
