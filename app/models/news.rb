# encoding: utf-8
class News < ActiveRecord::Base
	validates :title, :content, :image, presence: true
end
