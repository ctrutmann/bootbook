# Cohorts
Cohort.create(
  # id: 1
  name: "Fiery Skippers",
  campus: "San Francisco",
  graduation_date: "2016-06-10",
  )

Cohort.create(
  # id: 2
  name: "Pocket Gophers",
  campus: "San Francisco",
  graduation_date: "2016-07-01",
  )

Cohort.create(
  # id: 3
  name: "Nighthawks",
  campus: "San Francisco",
  graduation_date: "2016-07-29",
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
  employment_status: "none",
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
  email: "ctrutmann@gmail.com",
  uid: "16233095",
  provider: "github",
  name: "Christel Trutmann",
  github: "https://github.com/ctrutmann",
  profile_image: "https://avatars.githubusercontent.com/u/16233095",

  # The rest
  city: "",
  state: "",
  postal_code: "",
  country: "",
  is_graduate: "",
  is_admin: "",
  love: "",
  quirk: "",
  bio: "",
  advice_to_students: "",
  advice_to_graduates: "",
  willing_to_mentor: "",
  willing_to_collaborate: "",
  employment_status: "",
  employer: "",
  role: "",
  linkedin: "",
  facebook: "",
  twitter: "",
  employ: "",
  personal_website: "",
  female_scholarship: "",
  poc_scholarship: "",
  lgbtq_scholarship: "",
  veteran_scholarship: "",
  prior_coding_experience: ""
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
  city: "",
  state: "",
  postal_code: "",
  country: "",
  is_graduate: "",
  is_admin: "",
  love: "",
  quirk: "",
  bio: "",
  advice_to_students: "",
  advice_to_graduates: "",
  willing_to_mentor: "",
  willing_to_collaborate: "",
  employment_status: "",
  employer: "",
  role: "",
  linkedin: "",
  facebook: "",
  twitter: "",
  employ: "",
  personal_website: "",
  female_scholarship: "",
  poc_scholarship: "",
  lgbtq_scholarship: "",
  veteran_scholarship: "",
  prior_coding_experience: ""
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
  city: "",
  state: "",
  postal_code: "",
  country: "",
  is_graduate: "",
  is_admin: "",
  love: "",
  quirk: "",
  bio: "",
  advice_to_students: "",
  advice_to_graduates: "",
  willing_to_mentor: "",
  willing_to_collaborate: "",
  employment_status: "",
  employer: "",
  role: "",
  linkedin: "",
  facebook: "",
  twitter: "",
  employ: "",
  personal_website: "",
  female_scholarship: "",
  poc_scholarship: "",
  lgbtq_scholarship: "",
  veteran_scholarship: "",
  prior_coding_experience: ""
  # cohort_id: "3"   # build this via join table  # actually more like "56" for real
)
