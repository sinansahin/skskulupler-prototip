# encoding: utf-8
class News < ActiveRecord::Base
	validates :title, :content, :avatar, presence: true
end
