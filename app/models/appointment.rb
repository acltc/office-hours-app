class Appointment < ActiveRecord::Base
	belongs_to :mentor

  require 'date'


  def run_cron_job_everyday_to_remind_mentees
    tomorrow = Date.today + 1
    Appointment.where(:date_start_time => tomorrow.beginning_of_day..tomorrow.end_of_day)

  end

end
