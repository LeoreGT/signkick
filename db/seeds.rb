#9 random profiles
#5 ALL THE SAME language/city
#one needs to have reviews

# Create Languages

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
  "Swedish"
]



# Create 14 users for interpreters
#9 random users
#5 from Copenhagen, Speak Danish Sign Language

users = [
  { email:"james.davies@gmail.com", password:"password" }, #american
  { email:"lily.wright@gmail.com", password:"password" }, #english
  { email:"luca.romano@gmail.com", password:"password" }, #italian
  { email:"marie.martin@gmail.com", password:"password" }, #french
  { email:"daniel.kohein@gmail.com", password:"password" }, #israeli
  { email:"sauwai.zhang@gmail.com", password:"password" }, #chinese
  { email:"sebastian.garcia@gmail.com", password:"password" }, #spanish
  { email:"yuki.namajima@gmail.com", password:"password" }, #japanese
  { email:"mathilda.schmidt@gmail.com", password:"password" }, #german
  { email:"jakob.eriksen@gmail.com", password:"password" }, #danish
  { email:"finn.lassen@gmail.com", password:"password" }, #danish
  { email:"kirsten.mikkelsen@gmail.com", password:"password" }, #danish
  { email:"camilla.vestergaard@gmail.com", password:"password" }, #danish
  { email:"mette.olsen@gmail.com", password:"password" }, #danish
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
    bio: "A qualified American Sign Language interpreter. I completed the two-year Diploma in Sign Language Interpreting (DipSLI), awarded by Gallaudet University."
    price: 100,
    location: "Chicago",
    years_of_experience: 4,
    overall_performance:,
    friendliness:,
    language_ability:,
    punctuality:,
    professionalism:,
    photo: nil
    },


    {
      name: "Lily",
      bio: "I am a CODA. My parents, brother and sister are all deaf and use sign language – I’m hearing and can talk but my first language was sign language.",
      price: 150,
      location: "London",
      years_of_experience: 20,
      overall_performance:,
      friendliness:,
      language_ability:,
      punctuality:,
      professionalism:,
      photo: nil
      },


      {
        name: "Luca",
        bio: "",
        price: 80,
        location: "Milan",
        years_of_experience: 2,
        overall_performance:,
        friendliness:,
        language_ability:,
        punctuality:,
        professionalism:,
        photo: nil
        },

        {
          name: "Marie",
          bio: "",
          price: 120,
          location: "Lyon",
          years_of_experience: 5,
          overall_performance:,
          friendliness:,
          language_ability:,
          punctuality:,
          professionalism:,
          photo: nil
          },

          {
            name: "Daniel",
            bio: "",
            price: 100,
            location: "Tel Aviv",
            years_of_experience: 2,
            overall_performance:,
            friendliness:,
            language_ability:,
            punctuality:,
            professionalism:,
            photo: nil
            },

            {
              name: "Sauwai",
              bio: "",
              price: 150,
              location: "Hong Kong",
              years_of_experience: 4,
              overall_performance:,
              friendliness:,
              language_ability:,
              punctuality:,
              professionalism:,
              photo: nil
              },

              {
                name: "Sebastian",
                bio: "",
                price: 150,
                location: "Madrid",
                years_of_experience: 8,
                overall_performance:,
                friendliness:,
                language_ability:,
                punctuality:,
                professionalism:,
                photo: nil
                },

                {
                  name: "Yuki",
                  bio: "",
                  price: 120,
                  location: "Tokyo",
                  years_of_experience: 5,
                  overall_performance:,
                  friendliness:,
                  language_ability:,
                  punctuality:,
                  professionalism:,
                  photo: nil
                  },


                  {
                    name: "Mathilda",
                    bio: "",
                    price: 80,
                    location: "Berlin",
                    years_of_experience: 3,
                    overall_performance:,
                    friendliness:,
                    language_ability:,
                    punctuality:,
                    professionalism:,
                    photo: nil
                    },

                    {
                      name: "Jakob",
                      bio: "",
                      price: 150,
                      location: "Copenhagen",
                      years_of_experience: 10,
                      overall_performance:,
                      friendliness:,
                      language_ability:,
                      punctuality:,
                      professionalism:,
                      photo: nil
                      },

                      {
                        name: "Finn",
                        bio: "",
                        price: 100,
                        location: "Copenhagen",
                        years_of_experience: 4,
                        overall_performance:,
                        friendliness:,
                        language_ability:,
                        punctuality:,
                        professionalism:,
                        photo: nil
                        },


                        {
                          name: "Kirsten",
                          bio: "",
                          price: 150,
                          location: "Copenhagen",
                          years_of_experience: 10,
                          overall_performance:,
                          friendliness:,
                          language_ability:,
                          punctuality:,
                          professionalism:,
                          photo: nil
                          },

                          {
                            name: "Camilla",
                            bio: "",
                            price: 100,
                            location: "Copenhagen",
                            years_of_experience: 5,
                            overall_performance:,
                            friendliness:,
                            language_ability:,
                            punctuality:,
                            professionalism:,
                            photo: nil
                            },


                            {
                              name: "Metteo",
                              bio: "",
                              price: 120,
                              location: "Copenhagen",
                              years_of_experience: 8,
                              overall_performance:,
                              friendliness:,
                              language_ability:,
                              punctuality:,
                              professionalism:,
                              photo: nil
                              },


































                            ]

                            User.all.each_with_index do |user, index|
                              interpreter = Interpreter.new(interpreters[index])
                              interpreter.user = user
                              if interpreter.save
                                puts "Interpreter #{interpreter.name} was created"
                              else
                                puts "Error : Interpreter #{interpreter.name} not saved"
                              end
                            end


# Create languages for interpreteres

language_skills =  [
  {
    email: "kirsten.mikkelsen@gmail.com",
    languages: [ "danish", "danish sing language"]
    },

    {
      email: "camilla.vestergaard@gmail.com",
      languages: [ "english", "english sign language"]
      },
    ]

    language_skills.each do |language_skill|
      interpreter = User.find_by(email:language_skill[:email]).interpreter
      language_skill[:languages].each do |language|
        language_skill = LanguageSkill.new()
        language_skill.interpreter = interpreter
        language_skill.language = language
        if language_skill.save
          puts "add #{language.name} to #{interpreter.name}"
        else
          puts "Error #{language.name} not added to #{interpreter.name}"
        end
      end
    end









