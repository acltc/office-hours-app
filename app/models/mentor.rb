class Mentor < ActiveRecord::Base
	has_many :appointments
  mount_uploader :photo, MentorPhotoUploader
  validates_presence_of :first_name, :last_name, :email, :bio, :photo, :category_id

	def full_name
    "#{first_name} #{last_name}"
  end 

end
