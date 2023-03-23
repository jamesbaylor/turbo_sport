user1 = User.create(
  email:"david.taylor@yahoo.com",
  password: '123456',
  full_name:'David Taylor',
  age: 32,
  gender: 'male'
)

user2 = User.create(
  email:"jden.cox@yahoo.com",
  password: '123456',
  full_name:'Jden Cox',
  age: 31,
  gender: 'male'
)

user3 = User.create(
  email:"robert.lewandowski@yahoo.com",
  password: '123456',
  full_name:'Robert Lewandowski',
  age: 35,
  gender: 'male'
)

user4 = User.create(
  email:"serena.williams@yahoo.com",
  password: '123456',
  full_name:'Serena Williams',
  age: 29,
  gender: 'female'
)

user5 = User.create(
  email:"nahid.kiani@yahoo.com",
  password: '123456',
  full_name:'Nahid Kiani',
  age: 24,
  gender: 'female'
)

user6 = User.create(
  email:"mohammad.ali@yahoo.com",
  password: '123456',
  full_name:'Mohammad Ali Klay',
  age: 60,
  gender: 'male'
)

user7 = User.create(
  email:"emil.heski@yahoo.com",
  password: '123456',
  full_name:'Emil Heski',
  age: 52,
  gender: 'male'
)

user8 = User.create(
  email:"karim.benzema@yahoo.com",
  password: '123456',
  full_name:'Karim Benzema',
  age: 34,
  gender: 'male'
)

user9 = User.create(
  email:"antonio.konte@yahoo.com",
  password: '123456',
  full_name:'Antonio Konte',
  age: 55,
  gender: 'male'
)

user10 = User.create(
  email:"roberto.carlos@yahoo.com",
  password: '123456',
  full_name:'Roberto Carlos',
  age: 47,
  gender: 'male'
)

event1 = Event.create(
  name: 'Wrestling Excersise',
  user: user1,
  location: 'Washington',
  description: 'Let\'s practice and get ready for upcoming world championship competition.',
  start_time: '2022-10-10 10:00:00',
  end_time: '2022-10-10 12:00:00',
  price: 150,
  available_spots: 50,
  maximum_applications: 100
)

request1 = Request.create(user: user2, event: event1, is_accepted: true)
request2 = Request.create(user: user4, event: event1)
request3 = Request.create(user: user5, event: event1)
request4 = Request.create(user: user6, event: event1, is_accepted: false)
request5 = Request.create(user: user10, event: event1)
request6 = Request.create(user: user7, event: event1)

event2 = Event.create(
  name: 'Freestyle wresetling',
  user: user2,
  location: 'New York',
  description: 'I am looking for a partner for practicing together(75kg - 80kg)',
  start_time: '2022-10-14 10:00:00',
  end_time: '2022-11-13 12:00:00',
  is_free: true,
  available_spots: 1,
  maximum_applications: 10
)

request7 = Request.create(user: user1, event: event2, is_accepted: true)
request8 = Request.create(user: user9, event: event2)
request9 = Request.create(user: user10, event: event2)
request10 = Request.create(user: user5, event: event2, is_accepted: false)


event3 = Event.create(
  name: 'Greco roman wresetling',
  user: user1,
  location: 'Washington',
  description: 'I need someone who can help me to improve my skills.',
  start_time: '2022-10-14 10:00:00',
  end_time: '2022-11-13 12:00:00',
  is_free: true,
  available_spots: 1,
  maximum_applications: 10
)


request11 = Request.create(user: user2, event: event3, is_accepted: true)
request12 = Request.create(user: user4, event: event3, is_accepted: false)
request13 = Request.create(user: user5, event: event3, is_accepted: false)
request14 = Request.create(user: user10, event: event3, is_accepted: false)
request15 = Request.create(user: user7, event: event3, is_accepted: false)

event4 = Event.create(
  name: 'Futsal',
  user: user3,
  location: 'Tehran',
  description: 'Join us to play football this saturday night.',
  start_time: '2022-12-14 10:00:00',
  end_time: '2022-12-14 12:00:00',
  price: 80,
  available_spots: 3,
  maximum_applications: 10
)

request16 = Request.create(user: user1, event: event4, is_accepted: true)
request17 = Request.create(user: user8, event: event4, is_accepted: true)
request18 = Request.create(user: user9, event: event4, is_accepted: true)

event5 = Event.create(
  name: 'Tennis',
  user: user4,
  location: 'Colo Colo',
  description: 'Is someone interested in joining me to play tennis?',
  start_time: '2022-12-18 11:00:00',
  end_time: '2022-12-18 11:30:00',
  price: 1500,
  available_spots: 1,
  maximum_applications: 10
)

request19 = Request.create(user: user2, event: event5, is_accepted: true)
request20 = Request.create(user: user6, event: event5 )
request21 = Request.create(user: user7, event: event5)
request22 = Request.create(user: user8, event: event5)
request23 = Request.create(user: user9, event: event5)
request24 = Request.create(user: user10, event: event5)
request25 = Request.create(user: user3, event: event5)


event6 = Event.create(
  name: 'Running',
  user: user10,
  location: 'Masachosetes',
  description: 'I am looking for friends to give motivation to each other and excercise together.',
  start_time: '2022-12-18 11:00:00',
  end_time: '2022-12-18 11:30:00',
  is_free: true,
  available_spots: 2,
  maximum_applications: 10
)

request26 = Request.create(user: user7, event: event6)
request27 = Request.create(user: user6, event: event6)
request28 = Request.create(user: user5, event: event6)
request29 = Request.create(user: user4, event: event6)
request30 = Request.create(user: user3, event: event6)

event7 = Event.create(
  name: 'Body Building',
  user: user10,
  location: 'Masachosetes',
  description: 'I also like to go to the gym and do body building.',
  start_time: '2022-12-18 11:00:00',
  end_time: '2022-12-18 11:30:00',
  is_free: true,
  available_spots: 2,
  maximum_applications: 10
)

request31 = Request.create(user: user3, event: event7, is_accepted: true)
request32 = Request.create(user: user2, event: event7)
request33 = Request.create(user: user1, event: event7)
request34 = Request.create(user: user4, event: event7, is_accepted: true)
request35 = Request.create(user: user5, event: event7)

event8 = Event.create(
  name: 'Mountain Climbing',
  user: user1,
  location: 'Everest',
  description: 'We are going to climb the highest mountain in the world.',
  start_time: '2023-01-04 11:00:00',
  end_time: '2023-01-08 11:30:00',
  is_free: true,
  available_spots: 20,
  maximum_applications: 100
)

request36 = Request.create(user: user2, event: event8, is_accepted: true)
request37 = Request.create(user: user5, event: event8, is_accepted: true)
request38 = Request.create(user: user10, event: event8, is_accepted: true)
request39 = Request.create(user: user9, event: event8, is_accepted: true)


event9 = Event.create(
  name: 'Table Tennis',
  user: user4,
  location: 'Shicago',
  description: 'I am looking for a partner to play table tennis.',
  start_time: '2022-10-04 18:00:00',
  end_time: '2023-10-04 19:30:00',
  is_free: true,
  available_spots: 1,
  maximum_applications: 15
)

request40 = Request.create(user: user1, event: event9, is_accepted: true)

event10 = Event.create(
  name: 'Chess',
  user: user9,
  location: 'Turin',
  description: 'Is there any chess lover here?',
  start_time: '2022-10-11 18:00:00',
  end_time: '2023-10-11 19:30:00',
  is_free: true,
  available_spots: 1,
  maximum_applications: 5
)

request41 = Request.create(user: user1, event: event10, is_accepted: true)
request42 = Request.create(user: user9, event: event10)
request43 = Request.create(user: user7, event: event10)
request44 = Request.create(user: user6, event: event10)

event11 = Event.create(
  name: 'UEFA Champions League',
  user: user3,
  location: 'Manchester, England',
  description: 'Let\'s watch UEFA Chamipons league together at the City coffe shop.',
  start_time: '2022-10-11 20:00:00',
  end_time: '2023-10-11 22:00:00',
  price: 200,
  available_spots: 10,
  maximum_applications: 50
)

request45 = Request.create(user: user1, event: event10, is_accepted: false)
request46 = Request.create(user: user2, event: event10)
request47 = Request.create(user: user5, event: event10)
request48 = Request.create(user: user6, event: event10)

puts 'Database feeded successfully'