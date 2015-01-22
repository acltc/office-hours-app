class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    @appointments = Appointment.where(:mentor_id => params[:mentor_id])
    if params[:mentor_id]
    end

    
  end

  def show
    @mentors = Mentor.all
    mentor_id = params[:mentor_id]
    @mentor = Mentor.find_by(:id => params[:id])
    @appointments = Appointment.all
    @appointment = Appointment.find(mentor_id)
  end

  def create
    
  end
  
  def update
    
  end
end
