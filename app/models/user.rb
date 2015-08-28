# encoding: utf-8

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :roles
  #has_and_belongs_to_many :clubs 
  has_many :club_roles, dependent: :destroy
  has_many :clubs, through:  :club_roles
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  validates :first_name, :last_name, :email, presence: true
  validates :password, presence: true, on: :create
  validates :first_name, :last_name, length: {in: 3..50}
  after_create :set_default_role
   def set_default_role
    self.roles << Role.where(:name => "Student")
  end  
  def admin?
    (roles.find_by_name("Admin") != nil) ? true : false
  end

end