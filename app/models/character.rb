class Character < ApplicationRecord
	
	has_many :tools
	
	mount_uploader :avatar, AvatarUploader
	
	def sorting_name
		Character.sort_by{ |item| item.name } 
  end
end
