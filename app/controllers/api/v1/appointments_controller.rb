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
    date_pieces = params[:appointment][:date].split("T")[0].split("-")
    year = date_pieces[0].to_i
    month = date_pieces[1].to_i
    day = date_pieces[2].to_i

    time = params[:appointment][:time]
    hour = time.split(":")[0].to_i
    minute = time.split(":")[1].split(" ")[0].to_i
    am_pm = time.split(" ")[1]
    if am_pm == "PM"
      hour += 12
    end

    date_start_time = DateTime.new(year, month, day, hour, minute, 0)

    slot_time = params[:appointment][:duration].to_i + params[:appointment][:slot_break].to_i
    slots = params[:appointment][:slots].to_i
    number_of_appointments = 0
    until number_of_appointments == slots
      @appointment = Appointment.create({:date_start_time => date_start_time, :duration => params[:appointment][:duration], :mentor_id => params[:appointment][:mentor_id], :available => 1})
      date_start_time = date_start_time + slot_time.minutes
      number_of_appointments += 1
    end
  end
  
  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_start_time, :duration, :mentor_id, :mentee_name, :mentee_email, :available, :date, :time)
  end
end
