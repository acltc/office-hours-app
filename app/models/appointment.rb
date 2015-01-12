class Appointment < ActiveRecord::Base
	belongs_to :mentor

  require 'date'


  def run_cron_job_everyday_to_remind_mentees
    tomorrow = Date.today + 1
    tomorrows_appointments = Appointment.where(:date_start_time => tomorrow.beginning_of_day..tomorrow.end_of_day)
    send_email_to_mentees(tomorrows_appointments)
  end

  def non_nerd_time
    self.strftime("%A, %b, %d %Y %l:%M %p")
  end

end
