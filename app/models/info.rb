#encoding: utf-8
class Info < ActiveRecord::Base
	  validates :title , :content , presence: {message: "alanı boş bırakılamaz"}
	  validates :avatar, presence: {message: "yüklenmesi zorunludur."} , on: :create
	  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  		validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
