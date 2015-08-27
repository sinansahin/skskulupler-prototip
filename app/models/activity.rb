class Activity < ActiveRecord::Base
	belongs_to :club
	validates :club_id, :title, :image, :description, :start_date, :finish_date, :address, presence: true
end
