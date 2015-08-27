class Club < ActiveRecord::Base
	has_one :club_role, dependent: :destroy
	has_many :notices
	has_many :activities
	has_and_belongs_to_many :users

	 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 	 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
