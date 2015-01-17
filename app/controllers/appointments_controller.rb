class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create[params(:appointment)]
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_start_time, :duration, :mentor_id, :mentee_name, :mentee_email)
  end
end
