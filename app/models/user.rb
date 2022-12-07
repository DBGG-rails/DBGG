class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :posts
	has_many :tips
	has_many :f_posts
	has_many :communitys, :through => :posts,:through => :tips,:through => :f_posts
end
