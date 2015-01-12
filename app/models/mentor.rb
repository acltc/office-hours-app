class Mentor < ActiveRecord::Base
	has_many :appointments
  mount_uploader :photo, MentorPhotoUploader

	def full_name
    "#{first_name} #{last_name}"
  end 
end
