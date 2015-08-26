class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :clubs 
  #before_create :set_default_role
 # def set_default_role
  #  self.role = Role.last
  #end  
  def admin?
  	(roles.find_by_name("Admin") != nil) ? true : false
  end

end
