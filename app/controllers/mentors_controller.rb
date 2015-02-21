class MentorsController < ApplicationController
	before_action :authenticate_admin!, :only => [:edit, :destroy, :new, :create]

	def index
		@mentors = Mentor.all
		@categories = Category.all
		@mentors_with_future_appointments = []
		@category_hash = {}
		@categories.each do |category|
			@category_hash[category] = []
		end

		@mentors.each do |mentor|
			mentor.appointments.each do |appointment|
				if appointment.available && appointment.date_start_time.future?
					@mentors_with_future_appointments.push(mentor) unless @mentors_with_future_appointments.include?(mentor)
				end
			end
		end

		@mentors_with_future_appointments.each do |mentor|
			@categories.each do |category|
				if mentor.category_id == category.id && mentor.appointments.any?
					@category_hash[category] << mentor
					@category_hash[category].sort_by!{ |mentor| mentor.last_name.downcase }
				end
			end
		end

	end

	def show
		mentor_id = params[:id]
		@mentors = Mentor.all

		appointment_id = params[:id]
		@mentor = Mentor.find_by(:id => params[:id])
		@appointments = @mentor.appointments.all
		if @appointment
			@appointment = Appointment.find(appointment_id)
		end

		@new_appointment = Appointment.new
		@hours = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
		@minutes = ["00", "15", "30", "45"]
		@appointment_durations = [15, 30, 45, 60]
		@break_times = [0, 5, 10, 15, 30]

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

	def appointment_params
		return params.require(:appointment).permit(:date_start_time, :duration, :mentor_id, :mentee_name, :mentee_email, :available)
	end

end
