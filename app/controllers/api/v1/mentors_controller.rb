class Api::V1::MentorsController < ApplicationController

  def index
    @mentors = Mentor.all
  end

  def show
   # 
    # appointment_id = params[:id]
    # @mentor = Mentor.find_by(:id => params[:id])
    # @appointments = @mentor.appointments.all
    # @appointment = Appointment.find(appointment_id)
  end
end
