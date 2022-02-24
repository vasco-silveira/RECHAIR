# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

10.times do
  User.create(
    email: Faker::Internet.email,
    password: '123456789'
  )
end

Institution.create!(
  name: 'The University of Manchester',
  address: "Oxford Rd, Manchester M13 9PL",
  description: 'The University of Manchester is a historic institution, known for its groundbreaking discoveries and high-quality research with a global impact. Tracing its history back to 1824, this Russell Group university offers an exciting city campus environment and some of the best-funded student facilities in the UK.',
  image_url: 'https://ctfimages.intoglobal.com/xw2h6mjophtz/731sOVK2X4DrG83SK4jXAf/395ba54e3dc059a2fbb5b1fa5ca33cf3/Contentful_-_Campus_LifeUOM.jpg'
)

Institution.create!(
  name: 'Manchester Metropolitan',
  address: "All Saints, All Saints Building, Manchester M15 6BH",
  description: 'Here to make an impact on Manchester, our nation and beyond, with a driving ambition to discover and disseminate knowledge, and make higher education accessible and beneficial to all those with the passion and ability to succeed.',
  image_url: 'https://ctfimages.intoglobal.com/xw2h6mjophtz/5cdMW38yv1E6OJStQXDzfT/2740a3c0a2bf39986b335e329b9fb736/Exterior_Manchester_Metropolitan_University.JPG'
)

Institution.create!(
  name: 'The Royal Northern College of Music',
  address: "124 Oxford Rd, Manchester M13 9RD",
  description: 'The Royal Northern College of Music (RNCM) is a leading conservatoire located in Manchester, England. It is one of four conservatoires associated with the Associated Board of the Royal Schools of Music.',
  image_url: 'https://www.rncm.ac.uk/uploads/website-open-day-R.jpg'
)

Institution.create!(
  name: 'Manchester School of Architecture',
  address: "Chatham Building, Cavendish St, Manchester M15 6BR",
  description: 'The Manchester School of Architecture (MSA) provide undergraduate and postgraduate architecture courses, jointly run by Manchester Metropolitan University and the University of Manchester. Students will benefit from the considerable resources available at both universities, along with teaching and research expertise.',
  image_url: 'https://i2-prod.manchestereveningnews.co.uk/incoming/article7451078.ece/ALTERNATES/s1200c/JS41979899.jpg'
)

Course.create(
  professor: "Nicholas Spire",
  title: "Studio 1.1",
  description: "This unit establishes the principles and skills in research, analysis, argument and representation that support an understanding of architectural design.",
  subject: "Architecture",
  price: 120,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: [1, 2, 3, 4, 5].sample,
  image_url: "https://www.msa.ac.uk/media/msaacuk/content/study/ba/year1/2021/ba1-photo-simons-chinatown.jpg",
  institution_id: 4
)

Course.create(
  professor: "Victor Bauhaus",
  title: "Humanities 3",
  description: "This unit develops knowledge and understanding of the historical, cultural and professional contexts for architectural design and extends skills in research,analysis, academic writing and visual representation.",
  subject: "Architecture",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: [1, 2, 3, 4, 5].sample,
  image_url: "https://www.msa.ac.uk/media/msaacuk/content/images/img18.jpg",
  institution_id: 4
)

Course.create(
  professor: "Melody Spencer",
  title: "Music in Context",
  description: "Students are inspired to contextualise, review, and diversify their knowledge of Western art music and related music traditions through weekly lectures on a range of works, narratives, and moments of historical and cultural significance.",
  subject: "Music",
  price: 130,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: [1, 2, 3, 4, 5].sample,
  image_url: "https://www.rncm.ac.uk/uploads/Study-Here-image-2019.jpg",
  institution_id: 3
)

Course.create(
  professor: "Johnny B Goode",
  title: "Performance",
  description: "Learn how to critically evaluate and perform a diverse range of repertoire, inspiring a cultural connection between historic, contemporary and progressive material. Development of your own musical voice is encouraged through the composition, production and performance of original material.",
  subject: "Music",
  price: 130,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: [1, 2, 3, 4, 5].sample,
  image_url: "https://www.rncm.ac.uk/uploads/Study-Here-image-2019.jpg",
  institution_id: 3
)

Course.create(
  professor: "Henry Rubicon",
  title: "Case Studies in Global History",
  description: "This unit examines key themes and sources for the study of history in a global context. Students can explore an areas related to their potential bracketed award so topics and subjects on offer can vary year to year.",
  subject: "History",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: [1, 2, 3, 4, 5].sample,
  image_url: "https://wpp-cdn.azgw.mmu.ac.uk/course-images/headers/326/course-history.jpg",
  institution_id: 2
)

Course.create(
  professor: "Stats McStatterton",
  title: "Probability Theory and Statistics",
  description: "This unit teaches you basic statistics in a style that will prepare you for second year work, making use of relevant statistical software. It covers descriptive statistics, probability and statistical applications.",
  subject: "Mathematics",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: [1, 2, 3, 4, 5].sample,
  image_url: "https://wpp-cdn.azgw.mmu.ac.uk/course-images/department_course_images/159/CMDT-30470159-cropped.jpg",
  institution_id: 2
)

Course.create(
  professor: "James Urban",
  title: "Researching the City",
  description: "This unit will develop urban field-based methods and techniques for human geographers.",
  subject: "Human Geography",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: [1, 2, 3, 4, 5].sample,
  image_url: "https://wpp-cdn.azgw.mmu.ac.uk/course-images/headers/156/HUMAN-GEOG-shutterstock_255819034_cropped.jpg",
  institution_id: 2
)

Course.create(
  professor: "Neville D'Audit",
  title: "Quantitative Methods for Accounting and Finance",
  description: "The course aims to allow students to understand quantitative and statistical modelling and analytical techniques to a level necessary for quantitative finance.",
  subject: "Accounting",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: [1, 2, 3, 4, 5].sample,
  image_url: "//contentlibrary.manchester.ac.uk/_coursemarketing/UMANC/2022/156/07808/U_Accounting_1400x450a-1.jpg",
  institution_id: 1
)

Course.create(
  professor: "Silvia Greyscale",
  title: "Introduction to Early and Classical Cinema",
  description: "This course provides students with a grounding in the origins of film as a creative medium and introduces them to major developments in early and classical film history.",
  subject: "Drama and English Literature",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: [1, 2, 3, 4, 5].sample,
  image_url: "//contentlibrary.manchester.ac.uk/_coursemarketing/UMANC/2022/132/06613/U_drama-and-english-lit-ba1400x450.jpg",
  institution_id: 1
)

# 10.times do
#     Institution.create!(
#       name: Faker::University.name,
#       address: Faker::Address.street_address,
#       description: Faker::Lorem.paragraphs(number: 1),
#       image_url: Faker::LoremFlickr.image
#     )
#   end

# 40.times do
#   Course.create(
#     professor: Faker::Name.name,
#     title: Faker::Educator.course_name,
#     description: Faker::Lorem.paragraphs(number: 1),
#     subject: Faker::Educator.subject,
#     price: Faker::Number.number(digits: 3),
#     start_date: Faker::Date.in_date_period,
#     end_date: Faker::Date.in_date_period(year: 2023, month: 6),
#     rating: [1, 2, 3, 4, 5].sample,
#     image_url: Faker::LoremFlickr.image,
#     institution_id: rand(2..10)
#   )
# end
