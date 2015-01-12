json.array! @appointments do |appointment|
  json.id appointment.id
  json.date_start_time appointment.date_start_time
  json.mentor_id appointment.mentor_id
  json.duration appointment.duration
  json.mentee_name appointment.mentee_name
  json.mentee_email appointment.mentee_email
end