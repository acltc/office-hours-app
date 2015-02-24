class MyMailer < ActionMailer::Base

  def email_appointment_selected(appointment)

    @appointment = appointment
   
    mail(to: [@appointment.mentee_email, @appointment.mentor.email], subject: "appointment confirmation", from: "relroy5499@gmail.com")
  end

end