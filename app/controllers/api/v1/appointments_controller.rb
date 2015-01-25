class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    
  end

  def show
    appointment_id = params[:id]
    @appointments = Appointment.all
    @appointment = Appointment.find(appointment_id)
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params => [:appointment_params])
    if @appoinmtnt.save
    else
      render json: { errors: @appointments.errors.fullmessages }, status: 422
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_start_time, :duration, :mentor_id, :mentee_name, :mentee_email)
  end
end
