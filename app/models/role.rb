class Role < ActiveRecord::Base
	has_one :User, dependent: :destroy
end
