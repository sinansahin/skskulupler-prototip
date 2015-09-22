# encoding: utf-8
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
  

end
