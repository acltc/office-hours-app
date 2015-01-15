class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    
  end

  def show
    mentor_id = params[:mentor_id]
    @appointments = Appointment.all
    @appointment = Appointment.find(mentor_id)
  end

  def create
    
  end
  
  def update
    
  end
end
