User.create!([
  {email: "admin@1871.com", encrypted_password: "$2a$10$SfkAjS.SJ7getlksC95hK.Aei66a/smL7dygJussxGcdp.avRJCTK", reset_password_token: "ad53b8b429b55be67a8d6e9c3254a1a4f053dc3ab259e7faf4d653f26603bcc5", reset_password_sent_at: "2015-03-02 00:22:40", remember_created_at: nil, sign_in_count: 21, current_sign_in_at: "2015-03-13 01:00:14", last_sign_in_at: "2015-03-09 23:51:56", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: true}
])
Appointment.create!([
  {date_start_time: "2015-03-23 06:45:00", duration: 30, mentor_id: 1, mentee_name: "", mentee_email: "", available: true},
  {date_start_time: "2015-03-23 07:45:00", duration: 30, mentor_id: 1, mentee_name: "", mentee_email: "", available: true},
  {date_start_time: "2015-03-23 08:45:00", duration: 30, mentor_id: 1, mentee_name: "", mentee_email: "", available: true},
  {date_start_time: "2015-03-23 09:45:00", duration: 30, mentor_id: 1, mentee_name: "", mentee_email: "", available: true},
  {date_start_time: "2015-03-25 15:00:00", duration: 30, mentor_id: 4, mentee_name: nil, mentee_email: nil, available: true},
  {date_start_time: "2015-03-25 15:40:00", duration: 30, mentor_id: 4, mentee_name: nil, mentee_email: nil, available: true},
  {date_start_time: "2015-03-25 16:20:00", duration: 30, mentor_id: 4, mentee_name: nil, mentee_email: nil, available: true},
  {date_start_time: "2015-03-25 17:00:00", duration: 30, mentor_id: 4, mentee_name: nil, mentee_email: nil, available: true},
  {date_start_time: "2015-03-23 15:00:00", duration: 30, mentor_id: 1, mentee_name: nil, mentee_email: nil, available: true},
  {date_start_time: "2015-03-23 15:30:00", duration: 30, mentor_id: 1, mentee_name: "", mentee_email: "", available: true}
])
Category.create!([
  {name: "CEO"},
  {name: "Ruby specialist"},
  {name: "JavaScript Specialist"},
  {name: "Startup specialist"},
  {name: "General help"}
])
Mentor.create!([
  {first_name: "Sonal", last_name: "Mane", email: "relroy5499@gmail.com", photo: "Sonal-Mane.jpg", bio: "Sonal Mane is the CEO of harvestech. Specializing in harvesting fresh new developer talent and farming them out to tech companies that need help on the spot.\r\nIndustry Assistant Professor Of Entrepreneurship\r\nStuart School Of Business , Illinois Institute Of Technology\r\nI mentor because I know that I can make a difference in the lives of our entrepreneurs and our community. I can provide insights gathered from my 40 years as an entrepreneur in several fields of activity. I’ve made a lot of mistakes from which those I mentor can learn. All of us have an obligation to give back and help make our world a better place.", category_id: 1},
  {first_name: "Jim", last_name: "Doe 2", email: "Jdoe2@gmail.com", photo: "Tom-MacTavish.jpg", bio: "Jim Doe 2 is the CEO of harvestech. Specializing in harvesting fresh new developer talent and farming them out to tech companies that need help on the spot.\r\nHis prior experiences include \r\n- start ups like Anyone Can Learn to Code until Jay Wengrow stole the idea from him.\r\n- welknweljkwe\r\n-wckjwneljknwv\r\n-evkjnejnerver", category_id: 2},
  {first_name: "Danyell", last_name: "Keller", email: "dkeller@gmail.com", photo: "Danyell_Keller.jpg", bio: "General Manager at Oberweis", category_id: 2},
  {first_name: "Jay ", last_name: "Wengrow", email: "jay@anyonecanlearntocode.com", photo: "Jay-Wengrow.jpeg", bio: "Instructor at Anyone Can Learn to Code Bootcamp.", category_id: 4},
  {first_name: "Mark", last_name: "Richardsaon", email: "mark@eban.com", photo: "Mark-Richardson.jpg", bio: "Expert Ruby Programmer.", category_id: 5},
  {first_name: "Janet", last_name: "Gomez", email: "janet@gomez.com", photo: "Janet-Gomez.jpg", bio: "Awesome Rubyist", category_id: 5},
  {first_name: "Kyle", last_name: "Mullin", email: "kyle@mullen.com", photo: "Kyle-Mullen.jpg", bio: "Undisputable top notch developer.", category_id: 3},
  {first_name: "Chris", last_name: "Walsh", email: "chris@walsh.com", photo: "Chris_Walsh.jpg", bio: "All about the Walshification of America.", category_id: 4},
  {first_name: "Matt", last_name: "Carroll", email: "Matt@carroll.com", photo: "Matt-Carroll.jpg", bio: "The best even with a bum knee.", category_id: 1},
  {first_name: "Jeremy", last_name: "Elroy", email: "jelroy5499@gmail.com", photo: "Jeremy-Elroy.jpg", bio: "Java expert", category_id: 3},
  {first_name: "Megan", last_name: "Elroy", email: "mnelroy@olivet.edu", photo: "Megan-Elroy.jpeg", bio: "student mentor", category_id: 5},
  {first_name: "Keith", last_name: "Bisaillon", email: "keith@gmail.com", photo: "Keith_Bisaillon.png", bio: "Librarian at Stanford University", category_id: 3},
  {first_name: "Robert", last_name: "Elroy", email: "relroy5499@gmail.com", photo: "Robert.jpg", bio: "Greatest developer of all time.", category_id: 2},
  {first_name: "Justin", last_name: "Hartung", email: "justin@gnail.com", photo: "Justin-Hartung.jpg", bio: "Cloud platform\r\nGOOGLE", category_id: 1},
  {first_name: "Jim", last_name: "Beilick", email: "jim@gmail.com", photo: "Ruby_logo.png", bio: "Bio chemical engineer", category_id: 4}
])
