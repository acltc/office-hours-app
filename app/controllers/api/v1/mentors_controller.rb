class Api::V1::MentorsController < ApplicationController

  def index
    @mentors = Mentor.all
    @mentors = Mentor.where(:id => params[:id])
    if params[:id]
    end
  end

  def show
    
    appointment_id = params[:id]
    @mentor = Mentor.find_by(:id => params[:id])
    @appointments = @mentor.appointments.all
    @appointment = Appointment.find_by(:id => params[:id])
  end
end
