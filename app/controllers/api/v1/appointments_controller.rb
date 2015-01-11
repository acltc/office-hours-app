class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    
  end

  def show
    appointment_id = params[:id]
    @appointments = Appointment.all
    @appointment = Appointment.find(appointment_id)
  end

  def create
    
  end
  
  def update
    
  end
end
