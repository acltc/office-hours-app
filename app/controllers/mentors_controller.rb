class MentorsController < ApplicationController
	before_action :authenticate_admin!, :only => [:edit, :destroy, :new, :create]

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
		@mentor = Mentor.new
		@categories = Category.all 
	end

	def create
		@mentor = Mentor.create(mentor_params)
		redirect_to '/mentors'
	end

	def edit
		@categories = Category.all
		@mentor = Mentor.find_by(:id => params[:id])
	end

	def update
		@categories = Category.all
		@mentor = Mentor.find_by(:id => params[:id])
		@mentor.update(mentor_params)
		flash[:info] = "Mentor Succesfully Modified."
		redirect_to @mentor
	end

	def destroy
		@mentor = Mentor.find_by(:id => params[:id])
		@mentor.destroy
		flash[:info] = "Mentor Succesfully Deleted."
		redirect_to '/mentors'
	end

	private 

	def authenticate_admin!
		unless user_signed_in? && current_user.admin?
				
		end
	end

	def mentor_params
		return params.require(:mentor).permit(:first_name, :last_name, :email, :bio, :photo, :category_id, :commit, :id)

	end

end
