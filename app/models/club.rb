# encoding: utf-8
class Club < ActiveRecord::Base
	#has_one :club_role, dependent: :destroy
	has_many :notices, dependent: :destroy
	has_many :activities, dependent: :destroy
	#has_and_belongs_to_many :users
	has_many :club_roles, dependent: :destroy
  	has_many :users, through: :club_role

    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "omu.jpg"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
	validates :name, :supervisor, :regulation, :description, presence: {message: "alanı boş bırakılamaz"}
	validates :avatar, presence: {message: "yüklenmesi zorunludur."}, on: :create
	validates :email, presence: { message: "alanı boş bırakılamaz."}, uniqueness: {message: "alanı benzersiz olmalıdır."}

	 
end
