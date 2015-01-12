class Mentor < ActiveRecord::Base
	has_many :appointments
  mount_uploader :photo, MentorPhotoUpLoader

	def full_name
    "#{first_name} #{last_name}"
  end 
end
