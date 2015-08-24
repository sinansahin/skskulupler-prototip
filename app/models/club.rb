class Club < ActiveRecord::Base
	has_one :ClubRole, dependent: :destroy
	has_many :Notice
	has_many :Activity
	has_and_belongs_to_many :User

end
