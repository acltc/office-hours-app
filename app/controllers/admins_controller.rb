class AdminsController < ApplicationController
  def index
    @mentors = Mentor.all
    @appointments = Appointment.all
    
  end

end
