class HomeController < ApplicationController
  def index
  	#if user_signed_in?
  	#	club_id = Club_role.where(user_id: User.find_by_id(current_user.id)).club_id
  	#	@Club = Club.find_by_id(club_id)
  	#end
  	#Oturum açılmışsa user ın club bilgisine ulaşıp aşağıdakileri ona göre wherelemek gerekiyor.
  	@Club = Club.all
  	@Activities = Activity.all
  	@Notice = Notice.all
  	###
  	@infos = Info.all
  end
  def kuluplerim
    if user_signed_in?
      club_ids = current_user.club_roles.pluck(:club_id)
      @Clubs = current_user.clubs.where(id: club_ids)
      @Activities = Activity.where(club_id: club_ids)
      @Notice = Notice.where(club_id: club_ids)
    else
      @Club = Club.all
      @Activities = Activity.all
      @Notice = Notice.all
    end

    #Oturum açılmışsa user ın club bilgisine ulaşıp aşağıdakileri ona göre wherelemek gerekiyor.
    
    ###
    @infos = Info.all
  end

end
