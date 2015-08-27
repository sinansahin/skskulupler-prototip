class Club < ActiveRecord::Base
	has_one :club_role, dependent: :destroy
	has_many :notices
	has_many :activities
	#has_and_belongs_to_many :users
	has_many :club_roles, dependent: :destroy
  	has_many :users, through:  :club_role

	 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "omu.jpg"
 	 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
 	 validates :name, :logo, :supervisor, :regulation, :description, :email, presence: true

end
