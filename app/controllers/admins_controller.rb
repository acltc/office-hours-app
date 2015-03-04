class AdminsController < ApplicationController
  def index
    if user_signed_in? && current_user.admin?
    @mentors = Mentor.all
    @appointments = Appointment.all
    else render :file => "/public/404.html", :status => 404
      
    end
    
  end

end
