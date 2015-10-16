module ClubsHelper
 def club_members
 	array = []
 	ClubRole.where(club_id: @club).each {|u| array << User.find(u.user_id).first_name+" "+User.find(u.user_id).last_name}
 	array
 end
end
