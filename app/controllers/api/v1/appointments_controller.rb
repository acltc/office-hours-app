class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    @appointments = Appointment.where(:mentor_id => params[:mentor_id])
    if params[:mentor_id]
    end

    
  end

  def show
    @mentors = Mentor.all
    mentor_id = params[:id]
    @mentor = Mentor.find_by(:id => params[:id])
    @appointments = Appointment.all
    @appointment = Appointment.find_by(:id => params[:id])
  end

  def new
    @appointment = Appointment.new
  end

  def create
    date = appointment_params[:date_start_time]
    puts date
    @appointment = Appointment.new(appointment_params)
    unless @appointment.save
      render json: { errors: @appointments.errors.fullmessages }, status: 422
    end
  end
  
  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_start_time, :duration, :mentor_id, :mentee_name, :mentee_email, :available)
  end
end
