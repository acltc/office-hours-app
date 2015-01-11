class MentorsController < ApplicationController

	def index
		@mentors = Mentor.all
	end

	def show
		mentor_id = params[:id]
		@mentors = Mentor.all
		@mentor = Mentor.find(mentor_id)

		appointment_id = params[:id]
		@appointments = Appointment.all
		@appointment = Appointment.find(appointment_id)
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def delete
	end

	def destroy
	end

end
