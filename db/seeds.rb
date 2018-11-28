require 'date'

puts 'Dropping database...'
Experience.destroy_all
User.destroy_all

puts 'Creating fishes...'
andrew = User.create!(
  email: 'a.erlanger@gmail.com',
  photos: [open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1542906721/user.jpg')],
  first_name: 'Andrew',
  last_name: 'Erlanger',
  password: '123456',
  password_confirmation: '123456',
  bio: "Looking for someone straight up from Down Under? Let's make a date.",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1988, 2, 26)
)
marcel = User.create!(
  email: 'marcelsf23br@gmail.com',
  photos: [open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1542906721/2018-11-22_18.10.49.jpg')],
  first_name: 'Marcel',
  last_name: 'Fonseca',
  password: '123456',
  password_confirmation: '123456',
  bio: "Bacon ipsum dolor amet venison andouille short loin leberkas alcatra rump shank tri-tip
  buffalo. Chuck turkey kielbasa biltong. Cow biltong andouille, shank bacon ball tip tri-tip
  turkey filet mignon buffalo strip steak porchetta kielbasa burgdoggen sirloin. Meatball bresaola
  pig pork chop beef sirloin.",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1987, 10, 30)
)
maylee = User.create!(
  email: 'mayleesia@gmail.com',
  #photos: [open('https://avatars0.githubusercontent.com/u/12126401?s=400&v=4.jpg')],
  # photos: [open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543317707/maylee.jpg')],
  first_name: 'May-Lee',
  last_name: 'Sia',
  password: '123456',
  password_confirmation: '123456',
  bio: "Fresh out of my dirty thirties, ready for my jorty forties. You're only young once,
  but you can be immature forever!",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1978, 5, 18)
)
aigerim = User.create!(
  email: 'sensotape@gmail.com',
  photos: [open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1542906723/IMG_2340.jpg')],
  first_name: 'Aigerim',
  last_name: 'Kalysheva',
  password: '123456',
  password_confirmation: '123456',
  bio: "Bacon Pancakes\n
        Making Bacon Pancakes\n
        Take some bacon and I'll put it in a pancake\n
        Bacon Pancakes That's what its gonna make\n
        Bacon Pancakes",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1993, 3, 4)
)

puts 'Creating experiences...'
tango_date = aigerim.experiences.new(
  title: 'Come Tango Dancing with Me',
  category: 'Art & Culture',
  location: 'Gesundbrunnen, Berlin',
  description: "I learned to tango in Argentina and would like to share my skills in a romantic evening.",
  photos: [open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/come_tango_dancing_at_ballroom_berlin.png')],
  start_date: Date.new(2018, 12, 12),
  end_date: Date.new(2018, 12, 12)
)
tango_date.save!
matrix_date = marcel.experiences.new(
  title: 'Hardcore Clubbing at Matrix',
  category: 'Music',
  location: 'Warschauerstr., Berlin',
  description: "Wanna dance like crazy with someone SEZY at Matrix?",
  photos: [open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543317952/party_like_crazy_at_MATRIX.png')],
  start_date: Date.new(2018, 12, 7),
  end_date: Date.new(2018, 12, 9)
)
matrix_date.save!
copenhagen_date = andrew.experiences.new(
  title: 'Bike Ride to Copenhagen',
  category: 'Tourism',
  location: 'Copenhagen, Denmark',
  description: "Hi, I'd love to go on a romantic trip to Copenhagen by bike",
  photos: [open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318234/winter_trip_to_copenhagen.png')],
  start_date: Date.new(2018, 12, 18),
  end_date: Date.new(2018, 12, 19)
)
copenhagen_date.save!
boardgames_date = marcel.experiences.new(
  title: 'Board Games and Red Wine',
  category: 'Geek & Nerd',
  location: '77 Rigaerstr., Berlin',
  description: "A quiet night of boardgames and a bottle of Shafer One Point Five cabernet.",
  photos: [open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/boardgames_and_red_wine.png')],
  start_date: Date.new(2018, 12, 17),
  end_date: Date.new(2018, 12, 17)
)
boardgames_date.save!
skydiving_date = aigerim.experiences.new(
  title: 'Jump out of a Plane with Me',
  category: 'Bucketlist',
  location: 'Germany',
  description: "It's time to finally take the plunge! Let's go Skydiving this Weekend!",
  photos: [open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318234/skydiving.png')],
  start_date: Date.new(2018, 12, 20),
  end_date: Date.new(2018, 12, 21)
)
skydiving_date.save!
exploration_date = maylee.experiences.new(
  title: 'Explore the Abandoned Brewery',
  category: 'Adventure',
  location: 'Berlin, Germany',
  description: "We meet two hours before dusk. Bring your own gear. Experience required!",
  photos: [open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/explore_the_abandoned_brewery_in_pankow.png')],
  start_date: Date.new(2018, 12, 26),
  end_date: Date.new(2018, 12, 26)
)
exploration_date.save!
sushi_date = maylee.experiences.new(
  title: 'Sushi and Sake',
  category: 'Food & Drink',
  location: 'Prenzlauerberg, Berlin',
  description: "Let the good times roll! The freshest sushi and sashimi, paired with amazing sakes.",
  photos: [open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/cook_sushi_with_me.png')],
  start_date: Date.new(2018, 12, 21),
  end_date: Date.new(2018, 12, 21)
)
sushi_date.save!
badminton_date = andrew.experiences.new(
  title: 'Beat Me at Badminton',
  category: 'Sport & Recreation',
  location: 'Sportcenter Wittenau',
  description: "Up to see if we're a match? My record stands at undefeated, but maybe you can change that!",
  photos: [open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/beat_me_at_badminton.png')],
  start_date: Date.new(2018, 12, 27),
  end_date: Date.new(2018, 12, 27)
)
badminton_date.save!
puts 'Database seeded with 4 users, posting 2 dates each.'
