class AppointmentsController < ApplicationController
  # def new
  #   @appointment = Appointment.new
  # end

  def create
    @mentor = Mentor.find_by(:id => params[:id])

    @date = Date.new(params[:appointment][:date])
    puts @date
    @time = Time.new(params[:appointment][:time])
    puts @time
    @slots = params[:appointment][:slots]
    puts @slots

    # @appointment = Appointment.new(params[:appointment])

    # if @appointment.save
    #   redirect_to mentor_path(@mentor.id)
    # else
    #   render 'new'
    # end
  end

  def destroy
    @appointment = Appointment.find_by(:id => params[:id])
    @appointment.destroy
    flash[:success] = "Appointment Deleted"
    redirect_to '/admins'
    
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_start_time, :duration, :mentor_id, :mentee_name, :mentee_email, :available, :date, :time)
  end
end
