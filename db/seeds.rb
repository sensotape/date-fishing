require 'date'

puts 'Dropping database...'
Experience.destroy_all
User.destroy_all

puts 'Creating fishes...'
andrew = User.create!(
  email: 'a.erlanger@gmail.com',
  first_name: 'Andrew',
  last_name: 'Erlanger',
  password: '123456',
  password_confirmation: '123456',
  bio: "Super seriously totally straight guy from Down Under looking for new experiences.
  I'll try anything once. No butt stuff.",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1988, 2, 26)
)
marcel = User.create!(
  email: 'marcelsf23br@gmail.com',
  first_name: 'Marcel',
  last_name: 'Fonseca',
  password: '123456',
  password_confirmation: '123456',
  bio: "Hi there, I'm new to Berlin from Brazil and looking to meet new people. I'm super chill, love going
  to the movies and spending time with friends.",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1987, 10, 30)
)
maylee = User.create!(
  email: 'mayleesia@gmail.com',
  first_name: 'May-Lee',
  last_name: 'Sia',
  password: '123456',
  password_confirmation: '123456',
  bio: "Old enough to know better, young enough not to care :)",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1978, 5, 18)
)
aigerim = User.create!(
  email: 'sensotape@gmail.com',
  first_name: 'Aigerim',
  last_name: 'Kalysheva',
  password: '123456',
  password_confirmation: '123456',
  bio: "Till death do we part? Looking for my ride or die. Meet for a once-in-a-lifetime experience.
  Tell your family you went to live in a Buddhist monastery.",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1993, 3, 4)
)
puts 'Uploading photos...'
andrew.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1542906721/user.jpg'))
marcel.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1542906721/2018-11-22_18.10.49.jpg'))
maylee.photos.create!(picture: open('https://avatars0.githubusercontent.com/u/12126401?s=400&v=4.jpg'))
aigerim.photos.create!(picture: open('https://avatars0.githubusercontent.com/u/41161878?s=460&v=4.jpg'))

puts 'Creating experiences...'
tango_date = aigerim.experiences.new(
  title: 'Come Tango Dancing with Me',
  category: 'Art & Culture',
  location: 'Gesundbrunnen, Berlin',
  description: "I learned to tango in Argentina and would like to share my skills in a romantic evening.",
  date: Date.new(2018, 12, 12)
)
tango_date.save!
tango_date.photos.create!(picture: open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/come_tango_dancing_at_ballroom_berlin.png'))
copenhagen_date = andrew.experiences.new(
  title: 'Bike Ride to Copenhagen',
  category: 'Tourism',
  location: 'Copenhagen, Denmark',
  description: "Hi, I'd love to go on a romantic trip to Copenhagen by bike",
  date: Date.new(2018, 12, 15)
)
copenhagen_date.save!
copenhagen_date.photos.create!(picture: open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318234/winter_trip_to_copenhagen.png'))

boardgames_date = marcel.experiences.new(
  title: 'Board Games and Red Wine',
  category: 'Geek & Nerd',
  location: '77 Rigaerstr., Berlin',
  description: "A quiet night of boardgames and a bottle of Shafer One Point Five cabernet.",
  date: Date.new(2018, 12, 17)
)
boardgames_date.save!
boardgames_date.photos.create!(picture: open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/boardgames_and_red_wine.png'))

skydiving_date = aigerim.experiences.new(
  title: 'Jump out of a Plane with Me',
  category: 'Bucketlist',
  location: 'Germany',
  description: "It's time to finally take the plunge! Let's go Skydiving this Weekend!",
  date: Date.new(2018, 12, 20)
)
skydiving_date.save!
skydiving_date.photos.create!(picture: open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318234/skydiving.png'))

exploration_date = maylee.experiences.new(
  title: 'Explore the Abandoned Brewery',
  category: 'Adventure',
  location: 'Berlin, Germany',
  description: "We meet two hours before dusk. Bring your own gear. Experience required!",
  date: Date.new(2018, 12, 26)
)
exploration_date.save!
exploration_date.photos.create!(picture: open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/explore_the_abandoned_brewery_in_pankow.png'))

sushi_date = maylee.experiences.new(
  title: 'Sushi and Sake',
  category: 'Food & Drink',
  location: 'Prenzlauerberg, Berlin',
  description: "Let the good times roll! The freshest sushi and sashimi, paired with amazing sakes.",
  date: Date.new(2018, 12, 21)
)
sushi_date.save!
sushi_date.photos.create!(picture: open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/cook_sushi_with_me.png'))

badminton_date = andrew.experiences.new(
  title: 'Beat Me at Badminton',
  category: 'Sport & Recreation',
  location: 'Sportcenter Wittenau',
  description: "Up to see if we're a match? My record stands at undefeated, but maybe you can change that!",
  date: Date.new(2018, 12, 27)
)
badminton_date.save!
badminton_date.photos.create!(picture: open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/beat_me_at_badminton.png'))
puts 'Database seeded with 4 users, posting 2 dates each.'
