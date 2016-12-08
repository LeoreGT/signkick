#9 random profiles
#5 ALL THE SAME language/city
#one needs to have reviews

# Create Languages

Review.destroy_all
puts "Reviews destroyed"
Booking.destroy_all
puts "Bookings Destroyed"
LanguageSkill.destroy_all
puts "Language Skills destroyed"
Interpreter.destroy_all
puts "Interpreters destroyed"
DeafUser.destroy_all
puts "Deaf Users destroyed"
User.destroy_all
puts "Users destroyed"
Language.destroy_all
puts "Languages destroyed"



languages = [
  "American Sign Language",
  "Danish Sign Language",
  "English",
  "Danish",
  "Chinese Sign Language",
  "Taiwanese Sign Language",
  "Maltese Sign Language",
  "British Sign Language",
  "Chinese Mandarin",
  "Cantonese",
  "Maltese",
  "Brazilian Sign Language",
  "Brazilian Portugese",
  "Indo-Pakistani Sign Language",
  "Hindi/Urdu",
  "Bengali",
  "Hungarian Sign Language",
  "Hungarian",
  "Kenyan Sign Language",
  "Kiswahili",
  "Japanese Sign Language",
  "Japanese",
  "Ecuadorian Sign Language",
  "Norwegian-Malagasy Sign Language",
  "Spanish",
  "Norwegian",
  "Malagasy",
  "French Sign Language",
  "French",
  "Philippine Sign Language",
  "Tagalog",
  "Spanish Sign Language",
  "Mexican Sign Language",
  "German Sign Language",
  "German",
  "Greek Sign Language",
  "Greek",
  "Italian Sign Language",
  "Italian",
  "Irish Sign Language",
  "Irish",
  "Ulster Scots",
  "New Zealand Sign Languge",
  "Auslan",
  "Malaysian Sign Language",
  "Malay",
  "Hong Kong Sign Language",
  "Dutch Sign Language",
  "Catalan Sign Language",
  "Dutch",
  "Swedish Sign Language",
  "Swedish",
  "Hebrew",
  "Israeli Sign Language"
]

languages.each do  |language|
  language = Language.new(name:language)
  if language.save
    puts "#{language.name} created"
  else
    puts  "Error #{language.name} not created"
  end
end

# Create 14 users for interpreters
#9 random users
#5 from Copenhagen, Speak Danish Sign Language

users = [
  { email:"james.davies@gmail.com", password:"123456", is_interpreter: true }, #american
  { email:"lily.wright@gmail.com", password:"123456", is_interpreter: true}, #english
  { email:"luca.romano@gmail.com", password:"123456", is_interpreter: true }, #italian
  { email:"marie.martin@gmail.com", password:"123456", is_interpreter: true }, #french
  { email:"daniel.cohen@gmail.com", password:"123456", is_interpreter: true}, #israeli
  { email:"sauwai.zhang@gmail.com", password:"123456", is_interpreter: true }, #chinese
  { email:"sebastian.garcia@gmail.com", password:"123456", is_interpreter: true }, #spanish
  { email:"yuki.namajima@gmail.com", password:"123456", is_interpreter: true }, #japanese
  { email:"mathilda.schmidt@gmail.com", password:"123456", is_interpreter: true }, #german
  { email:"jakob.eriksen@gmail.com", password:"123456", is_interpreter: true }, #danish
  { email:"finn.lassen@gmail.com", password:"123456", is_interpreter: true }, #danish
  { email:"kirsten.mikkelsen@gmail.com", password:"123456", is_interpreter: true }, #danish
  { email:"camilla.vestergaard@gmail.com", password:"123456", is_interpreter: true }, #danish
  { email:"mette.olsen@gmail.com", password:"123456", is_interpreter: true }, #danish
  { email:"angel.babarsky@gmail.com", password:"123456", is_interpreter: false }, #deaf_user
  { email:"lars.eriksen@gmail.com", password:"123456", is_interpreter: false }, #deaf_user
  { email:"neil.hansen@gmail.com", password:"123456", is_interpreter: false }, #deaf_user
  { email:"emma.jensen@gmail.com", password:"123456", is_interpreter: false } #deaf_user
]

users.each do |user|
  u = User.new(user)
  if u.save
    puts "User #{user[:email]} was created"
  end
end

# Create 14 interpreters

interpreters = [
  {
  name: "James",
  bio: "A qualified American Sign Language interpreter. I completed the two-year Diploma in Sign Language Interpreting (DipSLI), awarded by Gallaudet University.",
  price: 100,
  location: "Chicago",
  years_of_experience: 4,
  overall_performance: 4.5,
  friendliness: 4,
  language_ability: 4,
  punctuality: 5,
  professionalism: 5,
  photo: nil
  },
  {
  name: "Lily",
  bio: "I am a CODA. My parents, brother and sister are all Deaf and use sign language – I’m hearing but my first language was sign language.",
  price: 150,
  location: "London",
  years_of_experience: 20,
  overall_performance: 5,
  friendliness: 5,
  language_ability: 5,
  punctuality: 4.5,
  professionalism: 5,
  photo: nil
  },
  {
  name: "Luca",
  bio: "I provide a translation/communication service between people who are Deaf/HOH and hearing people. Proficient in Italian Sign Language (LIS) as well as Italian and English.",
  price: 80,
  location: "Milan",
  years_of_experience: 2,
  overall_performance: 4,
  friendliness: 4,
  language_ability: 4,
  punctuality: 3,
  professionalism: 4,
  photo: nil
  },
  {
  name: "Marie",
  bio: "Staff interpreter for the Deaf at the International School of Lyon. I work primarily in the educational, work-training, and presentational setting.",
  price: 120,
  location: "Lyon",
  years_of_experience: 5,
  overall_performance: 4.5,
  friendliness: 5,
  language_ability: 4,
  punctuality: 5,
  professionalism: 4,
  photo: nil
  },
  {
  name: "Daniel",
  bio: "Trained interpreter on emergency medical, mental health and legal setting. Advocated for the rights of Deaf and Hard of Hearing individuals.",
  price: 100,
  location: "Tel Aviv",
  years_of_experience: 2,
  overall_performance: 4.5,
  friendliness: 5,
  language_ability: 4,
  punctuality: 4,
  professionalism: 5,
  photo: nil
  },
  {
  name: "Sauwai",
  bio: "Educator of Deaf/Hard-of-Hearing (D/HOH) youth for the past 6 years. Currently teaching D/HOH students in Hong Kong. Nationally certified as a Chinese Sign Language interpreter. ",
  price: 150,
  location: "Hong Kong",
  years_of_experience: 6,
  overall_performance: 5,
  friendliness: 5,
  language_ability: 5,
  punctuality: 5,
  professionalism: 5,
  photo: nil
  },
  {
  name: "Sebastian",
  bio: "Freelance Spanish Sign Language (LSE) interpreter for the medical field. On-call 24/7. I have experience interpreting medical jargon from migraine to surgery.",
  price: 150,
  location: "Madrid",
  years_of_experience: 8,
  overall_performance: 4,
  friendliness: 4,
  language_ability: 5,
  punctuality: 4,
  professionalism: 4,
  photo: nil
  },
  {
  name: "Yuki",
  bio: "I am a Japanese Sign Language interpreter (JSL), very passionate about promoting and developing a better community for the Deaf, Hard of Hearing and CODAs (Children of Deaf Adults).",
  price: 120,
  location: "Tokyo",
  years_of_experience: 5,
  overall_performance: 4.5,
  friendliness: 4,
  language_ability: 4,
  punctuality: 5,
  professionalism: 5,
  photo: nil
  },
  {
  name: "Mathilda",
  bio: "I am a basic German Sign Language instructor to University students. I introduce Deaf awareness to students as well as hearing staff that are not involved in the Deaf and Hard of Hearing community.",
  price: 80,
  location: "Berlin",
  years_of_experience: 3,
  overall_performance: 4,
  friendliness: 4,
  language_ability: 4,
  punctuality: 4,
  professionalism: 4,
  photo: nil
  },
  {
  name: "Jakob",
  bio: "Currently I teach Danish Sign Language (DTS 1-V), Intro into Deaf Studies classes and am a DTS tutor to students as needed. I have hosted Deaf Community events for students and members and coordinated Deaf Community Field Trips for DTS students.",
  price: 150,
  location: "Copenhagen",
  years_of_experience: 10,
  overall_performance: 5,
  friendliness: 5,
  language_ability: 5,
  punctuality: 5,
  professionalism: 5,
  photo: nil
  },
  {
  name: "Finn",
  bio: "I'm a freelance Danish/Danish Sign Language interpreter based in Copenhagen. I work in a variety of settings and have experience of all domains but have built up considerable experience in the field of medical interpreting (incuding sexual health) and child protection / social care.",
  price: 100,
  location: "Copenhagen",
  years_of_experience: 4,
  overall_performance: 4.5,
  friendliness: 5,
  language_ability: 5,
  punctuality: 4,
  professionalism: 5,
  photo: nil
  },
  {
  name: "Kirsten",
  bio: "I am an independent, certified Danish Sign Language interpreter and court interpreter. I worked with the Danish Deaf Sports Association for the 2009 Deaflympics in Taipei, Taiwan, as the official interpreter.",
  price: 150,
  location: "Copenhagen",
  years_of_experience: 10,
  overall_performance: 4.5,
  friendliness: 5,
  language_ability: 5,
  punctuality: 5,
  professionalism: 4,
  photo: nil
  },
  {
  name: "Camilla",
  bio: "I am a communications consultant for the Danish Deaf Association, an organization that would like to make society more aware of what it means to use Danish Sign Language as a primary means of communication.",
  price: 100,
  location: "Copenhagen",
  years_of_experience: 5,
  overall_performance: 4,
  friendliness: 4,
  language_ability: 4,
  punctuality: 4,
  professionalism: 4,
  photo: nil
  },
  {
  name: "Mette",
  bio: "Danish Sign Language interpreter primarily for conferences, training sessions, meetings and lectures. Interpreting from French, German, English into Danish as well as between Danish and Danish Sign Language.",
  price: 120,
  location: "Copenhagen",
  years_of_experience: 8,
  overall_performance: 5,
  friendliness: 5,
  language_ability: 5,
  punctuality: 5,
  professionalism: 5,
  photo: nil
  },
]

deaf_users = [
  {
  name: "Angel Babarsky",
  location: "Copenhagen",
  },
  {
  name: "Lars Eriksen",
  location: "Copenhagen",
  },
  {
  name: "Emma Jensen",
  location: "Copenhagen",
  },
  {
  name: "Neil Hansen",
  location: "Copenhagen",
  }
]

User.all.select { |user| user.is_interpreter }.each_with_index do |user, index|
  interpreter = Interpreter.new(interpreters[index])
  interpreter.user = user
  interpreter.remote_photo_url = File.join(Rails.root, "db/seed-images/#{interpreter.name.downcase}.jpg")
  if interpreter.save
    puts "Interpreter #{interpreter.name} was created"
  else
    puts "Error : Interpreter #{interpreter.name} not saved"
  end
end


User.all.reject { |user| user.is_interpreter }.each_with_index do |user, index|
  deaf_user = DeafUser.new(deaf_users[index])
  deaf_user.user = user
  deaf_user.remote_photo_url = File.join(Rails.root, "db/seed-images/#{deaf_user.name.downcase.gsub(" ", "-")}.jpg")
  if deaf_user.save
    puts "Deaf_user #{deaf_user.name} was created"
  else
    puts "Error : deaf_user #{deaf_user.name} not saved"
  end
end



# Create languages for interpreteres

language_skills =  [

  {
  email:"james.davies@gmail.com",
  languages: ["English", "American Sign Language"]
  },

  {
  email:"lily.wright@gmail.com",
  languages: ["English", "British Sign Language"]
  },


  {
  email:"luca.romano@gmail.com",
  languages: ["Italian", "English", "Italian Sign Language"]
  },

  {
  email:"marie.martin@gmail.com",
  languages: ["French", "French Sign Language"]
  },

  {
  email:"daniel.cohen@gmail.com",
  languages: ["Hebrew", "English", "American Sign Language", "Israeli Sign Language"]
  },

  {
  email:"sauwai.zhang@gmail.com",
  languages: ["English", "Cantonese", "Chinese Sign Language"]
  },

  {
  email:"sebastian.garcia@gmail.com",
  languages: ["Spanish", "French", "Spanish Sign Language"]
  },

  {
  email:"yuki.namajima@gmail.com",
  languages: ["Japanese", "English", "Japanese Sign Language"]
  },

  {
  email:"mathilda.schmidt@gmail.com",
  languages: ["German", "German Sign Language"]
  },


  {
  email:"jakob.eriksen@gmail.com",
  languages: ["Danish", "English", "Danish Sign Language"]
  },

  {
  email:"finn.lassen@gmail.com",
  languages: ["Danish", "Norwegian", "English", "Danish Sign Language"]
  },


  {
  email:"kirsten.mikkelsen@gmail.com",
  languages: ["Danish", "English", "Chinese Mandarin", "Danish Sign Language"]
  },

  {
  email:"camilla.vestergaard@gmail.com",
  languages: ["Danish", "Danish Sign Language"]
  },

  {
  email:"mette.olsen@gmail.com",
  languages: ["Danish", "French", "German", "English", "Danish Sign Language"]
  },

  {
  email:"angel.babarsky@gmail.com",
  languages: ["Danish Sign Language", "Swedish Sign Language"]
  },

  {
  email:"lars.eriksen@gmail.com",
  languages: ["Danish Sign Language"]
  },

  {
  email:"emma.jensen@gmail.com",
  languages: ["Danish Sign Language", "American Sign Language", "English"]
  },

  {
  email:"neil.hansen@gmail.com",
  languages: ["Danish Sign Language", "Danish"]
  }
]

# Create languages for interpreteres
language_skills.each do |language_skill|
  user = User.find_by(email:language_skill[:email])
  if user.is_interpreter
    interpreter = user.interpreter
    language_skill[:languages].each do |language|
      language_skill = LanguageSkill.new()
      language_skill.owner = interpreter
      language = Language.find_by_name(language)
      language_skill.language = language
      if language_skill.save
        puts "add #{language.name} to #{interpreter.name}"
      else
        puts "Error #{language.name} not added to #{interpreter.name}"
      end
    end
  else
    deaf_user = user.deaf_user
    language_skill[:languages].each do |language|
      language_skill = LanguageSkill.new()
      language_skill.owner = deaf_user
      language = Language.find_by_name(language)
      language_skill.language = language
      if language_skill.save
        puts "add #{language.name} to #{deaf_user.name}"
      else
        puts "Error #{language.name} not added to #{deaf_user.name}"
      end
    end
  end
end

bookings = [
  {
    price: 300,
    deaf_user: DeafUser.find_by_name("Angel Babarsky"),
    interpreter: Interpreter.find_by_name("Jakob"),
    location: "Rocket Labs",
    duration: 7200,
    booking_date: Time.now - 320000
  },
  {
    price: 300,
    deaf_user: DeafUser.find_by_name("Angel Babarsky"),
    interpreter: Interpreter.find_by_name("Kirsten"),
    location: "Nyhavn",
    duration: 7200,
    booking_date: Time.now - 50000
  },
  {
    price: 450,
    deaf_user: DeafUser.find_by_name("Emma Jensen"),
    interpreter: Interpreter.find_by_name("Jakob"),
    location: "Nyhavn",
    duration: 10800,
    booking_date: Time.now - 45000
  },
  {
    price: 150,
    deaf_user: DeafUser.find_by_name("Lars Eriksen"),
    interpreter: Interpreter.find_by_name("Jakob"),
    location: "Nyhavn",
    duration: 3600,
    booking_date: Time.now - 50000
  },
  {
    price: 300,
    deaf_user: DeafUser.find_by_name("Neil Hansen"),
    interpreter: Interpreter.find_by_name("Jakob"),
    location: "Nyhavn",
    duration: 7200,
    booking_date: Time.now - 1000
  },
  {
    price: 240,
    deaf_user: DeafUser.find_by_name("Angel Babarsky"),
    interpreter: Interpreter.find_by_name("Mette"),
    location: "Kongens Nytorv",
    duration: 7200,
    booking_date: Time.now - 3200000
  },
  {
    price: 120,
    deaf_user: DeafUser.find_by_name("Angel Babarsky"),
    interpreter: Interpreter.find_by_name("Mette"),
    location: "Nørrebro",
    duration: 3600,
    booking_date: Time.now + 7200
  },
  {
    price: 150,
    deaf_user: DeafUser.find_by_name("Angel Babarsky"),
    interpreter: Interpreter.find_by_name("Jakob"),
    location: "Vesterbro",
    duration: 3600,
    booking_date: Time.now + 320000
  }
]

bookings.each do |booking_params|
  booking = Booking.new(booking_params)
  if booking.save
    puts "Booking was created"
  else
    puts "You done fucked up"
  end
end

reviews = [
  {
  booking: Interpreter.find_by_name("Jakob").bookings.first,
  language_ability: 5,
  friendliness: 5,
  professionalism: 5,
  punctuality: 4,
  overall_performance: 5,
  content: "Jakob was wonderful! I really recommend him."
  },
  {
  booking: Interpreter.find_by_name("Kirsten").bookings.first,
  language_ability: 4,
  friendliness: 4,
  professionalism: 4,
  punctuality: 3,
  overall_performance: 4,
  content: "Kirsten wasn't very friendly and was a bit late, but she did a great job interpreting."
  },
  {
  booking: DeafUser.find_by_name("Lars Eriksen").bookings.first,
  language_ability: 5,
  friendliness: 5,
  professionalism: 5,
  punctuality: 4,
  overall_performance: 5,
  content: "Jakob was awesome! Ran a bit late but did a great job interpreting."
  },
  {
  booking: DeafUser.find_by_name("Emma Jensen").bookings.first,
  language_ability: 4,
  friendliness: 4,
  professionalism: 5,
  punctuality: 4,
  overall_performance: 4,
  content: "Great interpreter. I highly recommend him"
  },
  {
  booking: DeafUser.find_by_name("Neil Hansen").bookings.first,
  language_ability: 4,
  friendliness: 5,
  professionalism: 5,
  punctuality: 5,
  overall_performance: 5,
  content: "Possibly the best interpreter I've met through SignKick!"
  },

  ]

reviews.each do |review_params|
  review = Review.new(review_params)
  if review.save
    puts "Review was created"
  else
    puts "You done fucked up"
  end
end
