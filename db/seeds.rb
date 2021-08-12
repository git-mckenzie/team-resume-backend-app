student1 = Student.create!(
  first_name: "Ralph", last_name: "Garry", email: "ralph@example.com", password: "password", password_confirmation: "password", phone_number: "123-123-1234", linkedin_url: "example.com/linkedin", twitter_handle: "example.com/twitter", website: "example.com/website", resume_url: "example.com/resume", github_url: "example.com/github", photo_url: "example.com/profile", bio: "Ralph is a natural leader and natural follower. He is confused",
)

student2 = Student.create!(first_name: "Patricia", last_name: "Williams", email: "pat@example.com", password: "password", password_confirmation: "password", phone_number: "222-222-2222", linkedin_url: "example.com/linkedin", twitter_handle: "example.com/twitter", website: "example.com/website", resume_url: "example.com/resume", github_url: "example.com/github", photo_url: "example.com/profile", bio: "Pat is a rockstar... an actual rockstar!")

Experience.create!([
  { start_date: "2018-09-01", end_date: "2020-05-25", job_title: "programmer", company: "Google", student_id: student1.id },
  { start_date: "2015-07-22", end_date: "2018-02-01", job_title: "Rockstar", company: "Green Day", student_id: student2.id, details: "was super cool" },
  { start_date: "2015-09-01", end_date: "2016-04-13", job_title: "Packer", company: "Amazon", details: "it sucked and my feet hurt", student_id: student1.id },
])

Education.create!([
  { start_date: "2016-01-01", end_date: "2020-02-01", degree: "Bachelors of Science in Physics", university_name: "CUNY - Queens", details: "a grueling major in an amazing enviroment", student_id: student1.id },
  { start_date: "2017-01-01", end_date: "2021-05-01", degree: "Bachelors of Arts in Art History", university_name: "Yale", details: "a grueling major in an amazing enviroment", student_id: student2.id },
  { start_date: "2018-01-01", end_date: "2021-05-01", degree: "Masters in Computer Science", university_name: "University of Texas - Austin Campus", details: "🤓", student_id: student1.id },
])

skill1 = Skill.create!(name: "Ruby on Rails")
skill2 = Skill.create!(name: "HTML")
skill3 = Skill.create!(name: "CSS")
skill4 = Skill.create!(name: "Javascript")

Capstone.create!([{ name: "Start Wars", description: "In a Galaxy far far away", url: "starsapp.example.com", screenshot: "stars.jpg", student_id: student1.id }, { name: "Artful", description: "an drawful imitation", url: "artful.example.com", screenshot: "art.jpg", student_id: student2.id }])

StudentSkill.create!([{ student_id: student1.id, skill_id: skill4.id }, { student_id: student1.id, skill_id: skill1.id }, { student_id: student2.id, skill_id: skill2.id }, { student_id: student2.id, skill_id: skill3.id }])
