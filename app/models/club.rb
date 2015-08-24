class Club < ActiveRecord::Base
	has_one :club_role, dependent: :destroy
	has_many :notices
	has_many :activities
	has_and_belongs_to_many :users

end
