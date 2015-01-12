class MenteeMailer < ActionMailer::Base


  default from: "from@example.com"

  def send_email_to_mentees(appointments)
    appointments.each do |appointment|  
      mail( :to => appointment.mentee_email,
      :subject => "Reminder: You have an appointment with #{appointment.mentor.full_name} at #{appointment.date_start_time.non_nerd_time}." )
      @specific_appointment = appointment
    end
  end




end
