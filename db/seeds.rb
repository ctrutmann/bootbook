# Cohorts
Cohort.create!(
  # id: 1
  name: "Fiery Skippers",
  campus: "San Francisco",
  graduation_date: "2016-06-10",
  )
Cohort.create!(
  # id: 2
  name: "Pocket Gophers",
  campus: "San Francisco",
  graduation_date: "2016-07-01",
  )
Cohort.create!(
  # id: 3
  name: "Nighthawks",
  campus: "San Francisco",
  graduation_date: "2016-07-29",
  )

User.create!(
  # Bare minimum, gets created when first-time user signs in via GitHub
  email: "ctrutmann@gmail.com",
  uid: "16233095",
  provider: "github",
  name: "Christel Trutmann",
  github: "https://github.com/ctrutmann",
  profile_image: "https://avatars.githubusercontent.com/u/16233095",

  # The rest
  city: nil,
  state: nil,
  postal_code: nil,
  country: nil,
  is_graduate: false,
  is_admin: false,
  love: nil,
  quirk: nil,
  bio: nil,
  advice_to_students: nil,
  advice_to_graduates: nil,
  willing_to_mentor: true,
  willing_to_collaborate: true,
  employment_status: nil,
  employer: nil,
  role: nil,
  linkedin: nil,
  facebook: nil,
  twitter: nil,
  employ: nil,
  personal_website: nil,
  female_scholarship: true,
  poc_scholarship: false,
  lgbtq_scholarship: false,
  veteran_scholarship: false,
  prior_coding_experience: nil
  # cohort_id: "3"   # build this via join table  # actually more like "56" for real
  )
User.create!(
  # Bare minimum, gets created when first-time user signs in via GitHub
  email: "ed@mechem.org",
  uid: "171138",
  provider: "github",
  name: "Ed Mechem",
  github: "https://github.com/edmechem",
  profile_image: "https://avatars.githubusercontent.com/u/171138",

  # The rest
  city: "Oakland",
  state: "CA",
  postal_code: "94611",
  country: "US",
  is_graduate: "true",
  is_admin: "true",
  love: "Homebrew kombucha",
  quirk: "Please spell your name so I can remember it",
  bio: "SF native, former IT & QA, bicycle enthusiast, music lover, vegan",
  advice_to_students: "Embrace the confusion!",
  advice_to_graduates: "Network!",
  willing_to_mentor: "true",
  willing_to_collaborate: "true",
  employment_status: "unemployed",  # "unemployed", "fulltime", "other"
  employer: "",
  role: "",
  linkedin: "https://www.linkedin.com/in/edmechem",
  facebook: "https://www.facebook.com/ed.mechem",
  twitter: "https://twitter.com/eddiejoesf",
  employ: "http://employ.devbootcamp.com/candidates/3411",
  personal_website: "http://www.edmechem.com",
  female_scholarship: "false",
  poc_scholarship: "false",
  lgbtq_scholarship: "false",
  veteran_scholarship: "false",
  prior_coding_experience: "some",  # "none", "some", "lots"
  # cohort_id: "3"   # build this via join table  # actually more like "56" for real
  )
User.create!(
  # Bare minimum, gets created when first-time user signs in via GitHub
  email: "marshyup64@gmail.com",
  uid: "11687064",
  provider: "github",
  name: "Marshall Agharanya",
  github: "https://github.com/marshyup",
  profile_image: "https://avatars.githubusercontent.com/u/11687064",

  # The rest
  city: nil,
  state: nil,
  postal_code: nil,
  country: nil,
  is_graduate: false,
  is_admin: false,
  love: nil,
  quirk: nil,
  bio: nil,
  advice_to_students: nil,
  advice_to_graduates: nil,
  willing_to_mentor: false,
  willing_to_collaborate: false,
  employment_status: nil,
  employer: nil,
  role: nil,
  linkedin: nil,
  facebook: nil,
  twitter: nil,
  employ: nil,
  personal_website: nil,
  female_scholarship: false,
  poc_scholarship: false,
  lgbtq_scholarship: false,
  veteran_scholarship: false,
  prior_coding_experience: nil
  # cohort_id: "3"   # build this via join table  # actually more like "56" for real
  )
User.create!(
  # Bare minimum, gets created when first-time user signs in via GitHub
  email: "mfurlong64@gmail.com",
  uid: "17836164",
  provider: "github",
  name: "Michael Furlong",
  github: "https://github.com/mfurlong64",
  profile_image: "https://avatars.githubusercontent.com/u/17836164",

  # The rest
  city: nil,
  state: nil,
  postal_code: nil,
  country: nil,
  is_graduate: false,
  is_admin: false,
  love: nil,
  quirk: nil,
  bio: nil,
  advice_to_students: nil,
  advice_to_graduates: nil,
  willing_to_mentor: true,
  willing_to_collaborate: false,
  employment_status: nil,
  employer: nil,
  role: nil,
  linkedin: nil,
  facebook: nil,
  twitter: nil,
  employ: nil,
  personal_website: nil,
  female_scholarship: false,
  poc_scholarship: false,
  lgbtq_scholarship: false,
  veteran_scholarship: false,
  prior_coding_experience: nil
  # cohort_id: "3"   # build this via join table  # actually more like "56" for real
  )

User.create!(
  email: "kasper_341@hotmail.com",
  uid: "9372640",
  provider: "github",
  name: "Abid Ramay",
  github: "https://github.com/aramay",
  profile_image: "https://avatars.githubusercontent.com/u/9372640",
  )
User.create!(
  email: "benjaminhyw@gmail.com",
  uid: "17010773",
  provider: "github",
  name: "Ben Flores",
  github: "https://github.com/benjaminhyw",
  profile_image: "https://avatars.githubusercontent.com/u/17010773",
  )
User.create!(
  email: "placeholder1@placeholder.com",
  uid: "17172981",
  provider: "github",
  name: "Chris Wong",
  github: "https://github.com/Chris-Wong-1",
  profile_image: "https://avatars.githubusercontent.com/u/17172981",
  )
User.create!(
  email: "placeholder2@placeholder.com",
  uid: "9118226",
  provider: "github",
  name: "Chris Otto",
  github: "https://github.com/chrisotto",
  profile_image: "https://avatars.githubusercontent.com/u/9118226",
  )
User.create!(
  email: "placeholder3@placeholder.com",
  uid: "9848162",
  provider: "github",
  name: "David Ramirez",
  github: "https://github.com/davidthegreat",
  profile_image: "https://avatars.githubusercontent.com/u/9848162",
  )
User.create!(
  email: "placeholder4@placeholder.com",
  uid: "14889356",
  provider: "github",
  name: "Jonathan Hall",
  github: "https://github.com/jlhall",
  profile_image: "https://avatars.githubusercontent.com/u/14889356",
  )
User.create!(
  email: "placeholder5@placeholder.com",
  uid: "17437771",
  provider: "github",
  name: "Justin Wong",
  github: "https://github.com/justincadburywong",
  profile_image: "https://avatars.githubusercontent.com/u/17437771",
  )
User.create!(
  email: "placeholder6@placeholder.com",
  uid: "17833752",
  provider: "github",
  name: "Maxwell Workman",
  github: "https://github.com/maxwellworkman",
  profile_image: "https://avatars.githubusercontent.com/u/17833752",
  )
User.create!(
  email: "placeholder7@placeholder.com",
  uid: "13858091",
  provider: "github",
  name: "Mikael Teklehaimanot",
  github: "https://github.com/Mikael491",
  profile_image: "https://avatars.githubusercontent.com/u/13858091",
  )
User.create!(
  email: "placeholder8@placeholder.com",
  uid: "17678683",
  provider: "github",
  name: "Mikey Moore",
  github: "https://github.com/MikeyMoore",
  profile_image: "https://avatars.githubusercontent.com/u/17678683",
  )
User.create!(
  email: "placeholder9@placeholder.com",
  uid: "17859590",
  provider: "github",
  name: "Paul Haney",
  github: "https://github.com/paulunits",
  profile_image: "https://avatars.githubusercontent.com/u/17859590",
  )
User.create!(
  email: "placeholder@placeholder.com",
  uid: "17881460",
  provider: "github",
  name: "Sam Heinz",
  github: "https://github.com/samheinz",
  profile_image: "https://avatars.githubusercontent.com/u/17881460",
  )
User.create!(
  email: "tdfratto@gmail.com",
  uid: "6332732",
  provider: "github",
  name: "Ted Day-Fratto",
  github: "https://github.com/tedsf",
  profile_image: "https://avatars.githubusercontent.com/u/6332732",
  )

UserCohort.create!(
  user_id: 1,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 2,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 3,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 4,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 5,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 6,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 7,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 8,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 9,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 10,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 11,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 12,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 13,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 14,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 15,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 16,
  cohort_id: 3
  )
UserCohort.create!(
  user_id: 17,
  cohort_id: 3
  )

UserCohort.create!(
  user_id: 2,
  cohort_id: 2
  )
UserCohort.create!(
  user_id: 3,
  cohort_id: 2
  )
UserCohort.create!(
  user_id: 5,
  cohort_id: 2
  )
UserCohort.create!(
  user_id: 6,
  cohort_id: 2
  )
UserCohort.create!(
  user_id: 9,
  cohort_id: 2
  )
UserCohort.create!(
  user_id: 11,
  cohort_id: 2
  )

UserCohort.create!(
  user_id: 5,
  cohort_id: 1
  )
UserCohort.create!(
  user_id: 6,
  cohort_id: 1
  )
UserCohort.create!(
  user_id: 9,
  cohort_id: 1
  )

Interest.create!(interest: 'Kart Racing')
Interest.create!(interest: 'Judo')
Interest.create!(interest: 'Geocaching')
Interest.create!(interest: 'Jogging')
Interest.create!(interest: 'Yoga')
Interest.create!(interest: 'Ruby')
Interest.create!(interest: 'Rails')
Interest.create!(interest: 'Javascript')
Interest.create!(interest: 'React')
Interest.create!(interest: 'Python')

UserInterest.create!(user_id: 1, interest_id: 4)
UserInterest.create!(user_id: 1, interest_id: 7)

UserInterest.create!(user_id: 2, interest_id: 5)
UserInterest.create!(user_id: 2, interest_id: 8)

UserInterest.create!(user_id: 3, interest_id: 5)
UserInterest.create!(user_id: 3, interest_id: 10)

UserInterest.create!(user_id: 4, interest_id: 1)
UserInterest.create!(user_id: 4, interest_id: 8)

Follow.create!(followee_id: 1, follower_id: 2)
Follow.create!(followee_id: 1, follower_id: 3)
Follow.create!(followee_id: 1, follower_id: 4)

Follow.create!(followee_id: 2, follower_id: 1)
Follow.create!(followee_id: 2, follower_id: 3)
Follow.create!(followee_id: 2, follower_id: 4)

Follow.create!(followee_id: 3, follower_id: 1)
Follow.create!(followee_id: 3, follower_id: 2)
Follow.create!(followee_id: 3, follower_id: 4)

Follow.create!(followee_id: 4, follower_id: 1)
Follow.create!(followee_id: 4, follower_id: 2)
Follow.create!(followee_id: 4, follower_id: 3)

ConversationVariety.create!(variety: "Mentor Request")

Conversation.create!(sender_id: 1, recipient_id: 2, conversation_variety_id: 1)
Conversation.create!(sender_id: 2, recipient_id: 3, conversation_variety_id: 1)
Conversation.create!(sender_id: 3, recipient_id: 4, conversation_variety_id: 1)
Conversation.create!(sender_id: 4, recipient_id: 1, conversation_variety_id: 1)

Message.create(content: "Are you looking for a mentor?", user_id: 1, conversation_id: 1)
Message.create(content: "Hey, thanks for contacting me!", user_id: 2, conversation_id: 1)
Message.create(content: "How's it going?", user_id: 2, conversation_id: 2)
Message.create(content: "Good and you?", user_id: 3, conversation_id: 2)
Message.create(content: "Hey there", user_id: 3, conversation_id: 3)
Message.create(content: "Hi!", user_id: 4, conversation_id: 3)


