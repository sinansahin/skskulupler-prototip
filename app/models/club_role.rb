# encoding: utf-8
class ClubRole < ActiveRecord::Base
	belongs_to :role
	belongs_to :user 
  	belongs_to :club
end
