json.array! @mentors do |mentor|
  json.id mentor.id
  json.first_name mentor.first_name
  json.last_name mentor.last_name
  json.email mentor.email
  json.photo mentor.photo
  json.bio mentor.bio
  json.category_id mentor.category_id
end