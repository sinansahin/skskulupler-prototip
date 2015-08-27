class Notice < ActiveRecord::Base
	belongs_to :club
	validates :club_id, :title, :content, presence:true
end
