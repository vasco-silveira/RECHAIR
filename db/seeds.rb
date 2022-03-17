puts "Creating Users"
User.create!(
  first_name: 'Shotiko',
  last_name: 'Abramishvili',
  email: "shotiko@email.com",
  password: "123456",
  profile_pic_url: "https://i.pinimg.com/564x/86/f7/e8/86f7e811db5011c70bb24eb1b2c8f655.jpg"
)

User.create(
  first_name: 'Yaser',
  last_name: 'Hussain',
  email: "yaser@email.com",
  password: "123456"
)

User.create(
  first_name: 'Vasco',
  last_name: 'Silveira',
  email: "vasco@email.com",
  password: "123456"
)

User.create(
  first_name: 'Alex',
  last_name: 'Davies',
  email: "alex@email.com",
  password: "123456"
)

User.create(
  first_name: 'Joe',
  last_name: 'Biden',
  email: "joe@email.com",
  password: "123456",
  admin: true
)

puts "Creating Institution"

Institution.create!(
  name: 'University College London',
  city: "London",
  country: 'UK',
  zipcode: "WC1E6BT",
  address: "Gower St, London WC1E 6BT",
  description: 'University College London, which operates as UCL, is a major public research university located in London, United Kingdom.',
  image_url: 'https://ctfimages.intoglobal.com/xw2h6mjophtz/731sOVK2X4DrG83SK4jXAf/395ba54e3dc059a2fbb5b1fa5ca33cf3/Contentful_-_Campus_LifeUOM.jpg',
)

Institution.create!(
  name: 'London School of Economics',
  city: "London",
  country: 'UK',
  zipcode: "WC2A2AE",
  address: "Houghton St, London WC2A 2AE",
  description: 'The London School of Economics and Political Science is a public research university located in London, England, and a constituent college of the federal University of London.',
  image_url: 'https://ctfimages.intoglobal.com/xw2h6mjophtz/731sOVK2X4DrG83SK4jXAf/395ba54e3dc059a2fbb5b1fa5ca33cf3/Contentful_-_Campus_LifeUOM.jpg',
)

Institution.create!(
  name: "King's College London",
  city: "London",
  country: 'UK',
  zipcode: "WC2R2LS",
  address: "Strand, London WC2R 2LS",
  description: "King's College London is a public research university located in London, England. King's was established by royal charter in 1829 under the patronage of King George IV and the Duke of Wellington.",
  image_url: 'https://ctfimages.intoglobal.com/xw2h6mjophtz/731sOVK2X4DrG83SK4jXAf/395ba54e3dc059a2fbb5b1fa5ca33cf3/Contentful_-_Campus_LifeUOM.jpg',
)

Institution.create!(
  name: "Queen Mary University of London",
  city: "London",
  country: 'UK',
  zipcode: "E14NS",
  address: "Mile End Rd, Bethnal Green, London E1 4NS",
  description: "Queen Mary University of London is a public research university in London, England, and a member institution of the federal University of London",
  image_url: 'https://ctfimages.intoglobal.com/xw2h6mjophtz/731sOVK2X4DrG83SK4jXAf/395ba54e3dc059a2fbb5b1fa5ca33cf3/Contentful_-_Campus_LifeUOM.jpg',
)

# Institution.create!(
#   name: 'Manchester Metropolitan',
#   address: "All Saints, All Saints Building, Manchester M15 6BH",
#   description: 'Here to make an impact on Manchester, our nation and beyond, with a driving ambition to discover and disseminate knowledge, and make higher education accessible and beneficial to all those with the passion and ability to succeed.',
#   image_url: 'https://ctfimages.intoglobal.com/xw2h6mjophtz/5cdMW38yv1E6OJStQXDzfT/2740a3c0a2bf39986b335e329b9fb736/Exterior_Manchester_Metropolitan_University.JPG',
#   city: 'Manchester'
# )

# Institution.create!(
#   name: 'The Royal Northern College of Music',
#   address: "124 Oxford Rd, Manchester M13 9RD",
#   description: 'The Royal Northern College of Music (RNCM) is a leading conservatoire located in Manchester, England. It is one of four conservatoires associated with the Associated Board of the Royal Schools of Music.',
#   image_url: 'https://www.rncm.ac.uk/uploads/website-open-day-R.jpg',
#   city: 'Manchester'
# )

# Institution.create!(
#   name: 'Manchester School of Architecture',
#   address: "Chatham Building, Cavendish St, Manchester M15 6BR",
#   description: 'The Manchester School of Architecture (MSA) provide undergraduate and postgraduate architecture courses, jointly run by Manchester Metropolitan University and the University of Manchester. Students will benefit from the considerable resources available at both universities, along with teaching and research expertise.',
#   image_url: 'https://i2-prod.manchestereveningnews.co.uk/incoming/article7451078.ece/ALTERNATES/s1200c/JS41979899.jpg',
#   city: 'Manchester'
# )

puts "Creating courses"

Course.create!(
  professor: Faker::Name.name,
  title: 'Lady Gaga and Sociology',
  description: "The central objective is to unravel some of the sociologically relevant dimensions of the fame of Lady Gaga.",
  subject: 'Sociology',
  image_url: "https://bestlifeonline.com/wp-content/uploads/sites/3/2017/06/Lady-Gaga.jpg?resize=768,586&quality=82&strip=all",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)


Course.create!(
  professor: Faker::Name.name,
  title: "The Physics of Star Trek",
  description: "If you're ever wondered whether or not the USS Enterprise would have actually been capable of flight, Santa Clara University might be the school for you.",
  subject: "Physics",
  image_url: "https://bestlifeonline.com/wp-content/uploads/sites/3/2017/12/C-RfRYNXYAA9tHL.jpg?resize=768,576&quality=82&strip=all",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create!(
  professor: Faker::Name.name,
  title: 'Planetary Science',
  description: 'This class focuses on everything regarding space. With a particular focus on the solar system and extraterrestrial material, space missions and the technology used, this class will be sure to keep you engaged.',
  subject: 'Physics',
  image_url: 'https://oneclassblog.com/wp-content/uploads/2018/12/space-54999_640-1.jpg',
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create(
  professor: Faker::Name.name,
  title: 'Amateur Cinema',
  description: 'Combining research and history of amateur cinema, this class will give students an in-depth knowledge of key pieces, frameworks and the culture behind amateur films. It will also touch on the relationship between professional and amateur, and the movements surrounding them.',
  subject: 'Arts',
  image_url: 'https://i1.wp.com/oneclassblog.com/wp-content/uploads/2018/12/film-1668918_1920-2.jpg?fit=840%2C374&ssl=1' ,
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create(
  professor: Faker::Name.name,
  title: 'The Genre Bending Art of Essaying',
  description: 'This class will be sure to change your perception of essay writing, maybe even help you develop and enjoy writing them. With a combination of research and workshops, this module is a really interesting take on traditional creative writing topics.',
  subject: 'Arts',
  image_url: 'https://oneclassblog.com/wp-content/uploads/2018/12/business-1868015_1920-1-1024x683.jpg',
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create(
  professor: Faker::Name.name,
  title: 'Roman Satire',
  description: "A new way to look at Latin writing and Roman history. Satire is a unique literary genre that was shaped by two Latin poets. We won't give too much away - that's what the course is for." ,
  subject: 'Arts',
  image_url: 'https://oneclassblog.com/wp-content/uploads/2018/12/book-419589_1920-1024x741.jpg',
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create(
  professor: Faker::Name.name,
  title: 'Asian Cities',
  description: "An exciting module that displays up to 60 real estate development case studies to the students. Through site visits, presentations and workshops, students will develop new skills and offer solutions. With time spent in Hong Kong, Singapore, Beijing, Tokyo, Seoul and Shanghai, this is definitely a cool class.",
  subject: 'History',
  image_url: 'https://oneclassblog.com/wp-content/uploads/2018/12/hong-kong-2545665_1920-1024x683.jpg',
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create(
  professor: Faker::Name.name,
  title: 'The Scottish Enlightenment: Ideas and Influences',
  description: 'When in Glasgow, learn about the Scottish Enlightenment. This class will introduce students to the movement and how it has had a lasting influence on the country. It also enables students to visit important Scottish cultural centres, museums and libraries.',
  subject: 'Philosophy' ,
  image_url: 'https://i2.wp.com/oneclassblog.com/wp-content/uploads/2018/12/glasgow-2997986_1920.jpg?fit=840%2C556&ssl=1',
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create(
  professor: Faker::Name.name,
  title: 'Wireless Sensor Networks ',
  description: "This class is an introduction to a fundamental part of modern society. Learn all about embedded systems and wireless sensor networks. By the end of the class, you'll have a key understanding of every aspect of the applications and technology.",
  subject: 'Engineering',
  image_url: 'https://i2.wp.com/oneclassblog.com/wp-content/uploads/2018/12/algorithms-10-00080-g001.png?fit=840%2C449&ssl=1',
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create(
  professor: Faker::Name.name,
  title: "Writing for Performance ",
  description: "Contemporary writing for performance is a highly sought-after skill. You will develop your own writing ability, conduct an individual project and explore other pieces of performance writing. You will finish this cool class with all the skills and techniques needed for live performance.",
  subject: "Drama",
  image_url: 'https://oneclassblog.com/wp-content/uploads/2018/12/Hamlin_theatre.jpg' ,
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create(
  professor: Faker::Name.name,
  title: 'Urban Conservation',
  description: "In a city so rich in conservation areas, beautiful culture and rich architecture, you couldn't be studying this class in a better place. Explore the philosophy, methods and principles behind urban conservation at the University of Glasgow.",
  subject: "Architecture",
  image_url: 'https://i1.wp.com/oneclassblog.com/wp-content/uploads/2018/12/glasgow-2173449_1920.jpg?fit=840%2C558&ssl=1',
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create(
  professor: Faker::Name.name,
  title: 'Mandarin Advanced Translation',
  description: "As part of Glasgow's SMLC Translations Studies Programme, this class will give students all the necessary training and practice needed to effectively translate from English to Mandarin. This is a super special class, courtesy of the University's unique programme.",
  subject: 'Linguistics',
  image_url: 'https://i0.wp.com/oneclassblog.com/wp-content/uploads/2018/12/language-2345801_1920-1.jpg?fit=840%2C630&ssl=1',
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  institution: Institution.all.sample
)

Course.create(
  professor: "Nicholas Spire",
  title: "Studio",
  description: "This unit establishes the principles and skills in research, analysis, argument and representation that support an understanding of architectural design.",
  subject: "Architecture",
  price: 120,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  image_url: "https://www.msa.ac.uk/media/msaacuk/content/study/ba/year1/2021/ba1-photo-simons-chinatown.jpg",
  institution: Institution.all.sample
)

Course.create(
  professor: "Victor Bauhaus",
  title: "Humanities",
  description: "This unit develops knowledge and understanding of the historical, cultural and professional contexts for architectural design and extends skills in research,analysis, academic writing and visual representation.",
  subject: "Architecture",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  image_url: "https://www.msa.ac.uk/media/msaacuk/content/images/img18.jpg",
  institution: Institution.all.sample
)

Course.create(
  professor: "Melody Spencer",
  title: "Music in Context",
  description: "Students are inspired to contextualise, review, and diversify their knowledge of Western art music and related music traditions through weekly lectures on a range of works, narratives, and moments of historical and cultural significance.",
  subject: "Music",
  price: 130,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  image_url: "https://upload.wikimedia.org/wikipedia/commons/3/3f/Orchestra.jpg",
  institution: Institution.all.sample
)

Course.create(
  professor: "Johnny B Goode",
  title: "Performance",
  description: "Learn how to critically evaluate and perform a diverse range of repertoire, inspiring a cultural connection between historic, contemporary and progressive material. Development of your own musical voice is encouraged through the composition, production and performance of original material.",
  subject: "Music",
  price: 130,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  image_url: "https://www.rncm.ac.uk/uploads/Study-Here-image-2019.jpg",
  institution: Institution.all.sample
)

Course.create(
  professor: "Henry Rubicon",
  title: "Case Studies in Global History",
  description: "This unit examines key themes and sources for the study of history in a global context. Students can explore an areas related to their potential bracketed award so topics and subjects on offer can vary year to year.",
  subject: "History",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  image_url: "https://wpp-cdn.azgw.mmu.ac.uk/course-images/headers/326/course-history.jpg",
  institution: Institution.all.sample
)

Course.create(
  professor: "Stats McStatterton",
  title: "Probability Theory and Statistics",
  description: "This unit teaches you basic statistics in a style that will prepare you for second year work, making use of relevant statistical software. It covers descriptive statistics, probability and statistical applications.",
  subject: "Mathematics",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  image_url: "https://wpp-cdn.azgw.mmu.ac.uk/course-images/department_course_images/159/CMDT-30470159-cropped.jpg",
  institution: Institution.all.sample
)

Course.create(
  professor: "James Urban",
  title: "Researching the City",
  description: "This unit will develop urban field-based methods and techniques for human geographers.",
  subject: "Human Geography",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  image_url: "https://wpp-cdn.azgw.mmu.ac.uk/course-images/headers/156/HUMAN-GEOG-shutterstock_255819034_cropped.jpg",
  institution: Institution.all.sample
)

Course.create(
  professor: "Neville D'Audit",
  title: "Quantitative Methods for Accounting and Finance",
  description: "The course aims to allow students to understand quantitative and statistical modelling and analytical techniques to a level necessary for quantitative finance.",
  subject: "Accounting",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  image_url: "//contentlibrary.manchester.ac.uk/_coursemarketing/UMANC/2022/156/07808/U_Accounting_1400x450a-1.jpg",
  institution: Institution.all.sample
)

Course.create(
  professor: "Silvia Greyscale",
  title: "Introduction to Early and Classical Cinema",
  description: "This course provides students with a grounding in the origins of film as a creative medium and introduces them to major developments in early and classical film history.",
  subject: "Drama and English Literature",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  image_url: "//contentlibrary.manchester.ac.uk/_coursemarketing/UMANC/2022/132/06613/U_drama-and-english-lit-ba1400x450.jpg",
  institution: Institution.all.sample
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

Course.create(
  professor: "Siegmund Nageltzman",
  title: "History of combat",
  description: "History 160 introduces the basic principles of strategic analysis, particularly with respect to armed conflict. This is done primarily by close study of a series of case studies ranging from the Peloponnesian and Punic wars, to the conquests of Napoleon and the unification of Germany, to the Russo-Japanese war and World War I. We also read some of the great analysts of warfare, such as Clausewitz and Sun Zi, as well as such theorists of sea power as Alfred Thayer Mahan and Sir Julian Corbett. Requirements include a midterm and standard final examination, as well as two short (3 page) papers and a course paper on a topic of your choice (10-15 pages).
  Although this is an introductory course that assumes no previous knowledge, and is thus suitable for freshmen, the material is rarely taught anywhere, certainly not in 99% of colleges and universities, in spite of its absolutely fundamental importance for understanding history and the world. So higher level students will also find it of interest. Graduate students are welcome (see the Instructor about how to get graduate credit).",
  subject: "History",
  price: 150,
  start_date: Faker::Date.in_date_period,
  end_date: Faker::Date.in_date_period(year: 2023, month: 6),
  rating: (rand(3.0..5.0)).round(2),
  image_url: "https://www.historytoday.com/sites/default/files/articles/Combat_des_Trente_new.jpg",
  institution: Institution.all.sample
)

puts "courses created"
i = 0
for a in 1..22 do
Chatroom.create!(
  name: 'Roundtable',
  course_id: i += 1
)
end

puts "chatrooms created"
