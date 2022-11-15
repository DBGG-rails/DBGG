class Character < ApplicationRecord
	
	has_many :tools
	
	mount_uploader :avatar, AvatarUploader
end
