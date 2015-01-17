class MentorsController < ApplicationController

	def index
		@mentors = Mentor.all
	end

	def show
		mentor_id = params[:id]
		@mentors = Mentor.all

		appointment_id = params[:id]
		@mentor = Mentor.find_by(:id => params[:id])
		@appointments = @mentor.appointments.all
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
