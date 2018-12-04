require 'date'

puts 'Dropping database...'
Photo.destroy_all
Message.destroy_all
Conversation.destroy_all
Nibble.destroy_all
Experience.destroy_all
User.destroy_all

puts 'Creating fishes...'
# Users
andrew = User.create!(
  email: 'a.erlanger@gmail.com',
  first_name: 'Andrew',
  last_name: 'Erlanger',
  password: '123456',
  password_confirmation: '123456',
  bio: "Super seriously totally straight guy from Down Under looking for new experiences.
  I'll try anything once.",
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

boris = User.create!(
  email: 'borispaillard@gmail.com',
  first_name: 'Boris',
  last_name: 'Paillard',
  password: '123456',
  password_confirmation: '123456',
  bio: "CEO of the greatest bootcamp on earth. I do actually have a white and red wagon.",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1985, 6, 4)
)

rich = User.create!(
  email: 'richgrady@gmail.com',
  first_name: 'Richard',
  last_name: 'O`Grady',
  password: '123456',
  password_confirmation: '123456',
  bio: "Driver of Le Wagon Berlin. I came to Berlin because it rains so much, just like back home.",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1995, 6, 4)
)

bryan = User.create!(
  email: 'bryan@gmail.com',
  first_name: 'Bryan',
  last_name: 'Leighton',
  password: '123456',
  password_confirmation: '123456',
  bio: "Straight out of the good old US of A. Trying my luck in Europe!",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1990, 6, 4)
)

kaylin = User.create!(
  email: 'kaylin@gmail.com',
  first_name: 'Kaylin',
  last_name: 'Bittner',
  password: '123456',
  password_confirmation: '123456',
  bio: ".",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1985, 6, 4)
)

alice = User.create!(
  email: 'alice@gmail.com',
  first_name: 'Alice',
  last_name: 'Clavel',
  password: '123456',
  password_confirmation: '123456',
  bio: "International Web Development Teacher Super Star, looking for fun, uplifting experiences in Berlin.",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1985, 6, 4)
)

katharine = User.create!(
  email: 'katharine@gmail.com',
  first_name: 'Katharine',
  last_name: 'Doyle',
  password: '123456',
  password_confirmation: '123456',
  bio: "Young DJ out of London, trying to break into the ",
  gender: 'Female',
  seeking: 'Female',
  birthday: Date.new(1985, 6, 4)
)

clara = User.create!(
  email: 'claramorgen@gmail.com',
  first_name: 'Clara',
  last_name: 'Morgen',
  password: '123456',
  password_confirmation: '123456',
  bio: "CEO of the greatest bootcamp on earth. I do actually have a white and red wagon.",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1985, 6, 4)
)

nimkit = User.create!(
  email: 'nimkit@gmail.com',
  first_name: 'Nimkit',
  last_name: 'Lepcha',
  password: '123456',
  password_confirmation: '123456',
  bio: "CEO of the greatest bootcamp on earth. I do actually have a white and red wagon.",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1985, 6, 4)
)

# User photos
puts 'Uploading photos...'
boris.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543860812/big_detected_cover_59662824a9b4977b7400007b.jpg'))
andrew.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1542906721/user.jpg'))
marcel.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1542906721/2018-11-22_18.10.49.jpg'))
maylee.photos.create!(picture: open('https://avatars0.githubusercontent.com/u/12126401?s=400&v=4.jpg'))
aigerim.photos.create!(picture: open('https://avatars0.githubusercontent.com/u/41161878?s=460&v=4.jpg'))
rich.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543915962/22228568_10215461503709866_914630491015053537_n.jpg'))
bryan.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543915962/19029529_10209573268588468_1207346413178763227_n.jpg'))
kaylin.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543917552/983731_10152860580735246_1214873563_n.jpg'))
alice.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543915990/highres_273114615.jpg'))
katharine.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543915962/36379031_1809863849096011_3049154311729709056_o.jpg'))
clara.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543916833/13925037_10207203443100530_6062834479516916988_n.jpg'))
nimkit.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543915962/28279218_10214090792476997_8372779178525454463_n.jpg'))

# Experiences
#Aigerim
puts 'Creating experiences...'
panic_date = aigerim.experiences.new(
  title: 'Panic at the Disco Concert',
  category: 'Music',
  location: 'Astra Kulturhaus',
  description: "I have two tickets for my favorite band and would really like some company. Takers?.",
  date: Date.new(2018, 12, 20)
)
panic_date.save!
panic_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543922405/Panic-At-The-Disco-2018-03-22-Rock.jpg'))

machupichu_date = aigerim.experiences.new(
  title: 'Trip to Machu Pichu',
  category: 'Bucketlist',
  location: 'Machu Pichu',
  description: "I always wanted to go to this legendary place! Who wants to come with me? All expenses are paid for, except the plane ticket.",
  date: Date.new(2018, 12, 20)
)
machupichu_date.save!
machupichu_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543922328/jeremiah-berman-282409-unsplash.jpg'))

hpcastle_date = aigerim.experiences.new(
  title: 'Help me build a Lego Harry Potter Castle!',
  category: 'Geek & Nerd',
  location: 'Berlin',
  description: "Could use some help building this Lego set I got for Christmas. Would you like to help me? No Slytherins allowed!",
  date: Date.new(2018, 12, 30)
)
hpcastle_date.save!
hpcastle_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543922354/lego-harry-potter-71043-hogwarts-castle-2.jpg'))

#Andrew
desert_date = andrew.experiences.new(
  title: 'Desert Racing in the Australian Outback',
  category: 'Bucketlist',
  location: 'The Great Sandy Desert, Australia',
  description: "Hello, everyone! I've always wanted to ride towards the sunset in the Sandy Desert, but I think it would be much more interesting if I had good company. Who else is interested?",
  date: Date.new(2019, 06, 15)
)
desert_date.save!
desert_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543923292/loic-mermilliod-213394-unsplash.jpg'))

bikeride_date = andrew.experiences.new(
  title: 'Bike ride to Poland',
  category: 'Nature',
  location: 'Poland',
  description: "This is one ride I've been wanting to take since I moved to Berlin a couple of years ago. Anyone want to join me? Bring your own bike!",
  date: Date.new(2019, 06, 27)
)
bikeride_date.save!
bikeride_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543930610/Date%20Experiences/Pic-of-the-Day_Norbert-Jedrzejczyk_Tatra-Mountains_Zakopane-Poland.jpg'))

kayak_date = andrew.experiences.new(
  title: 'Kayaking at Spreewald',
  category: 'Adventure',
  location: 'Raddusch, Lindenstraße 1',
  description: "We paddle, we fall overboard and we laugh. Could be a very nice summer date. Could anyone teach me how to Kayak?",
  date: Date.new(2019, 06, 15)
)
kayak_date.save!
kayak_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543931062/Date%20Experiences/mckayla-crump-715292-unsplash.jpg'))

#Boris
lewagon_date = boris.experiences.new(
  title: 'Le Wagon Demoday - Batch 195',
  category: 'Art & Culture',
  location: 'The Factory',
  description: "Looking for someone to come with me to the demoday of the best batch in Le Wagon history!",
  date: Date.new(2018, 12, 07)
)
lewagon_date.save!
lewagon_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543859185/46994073_768409646831386_3904800939139137536_o.jpg'))

#Bryan
tango_date = bryan.experiences.new(
  title: 'Come Tango Dancing with Me',
  category: 'Art & Culture',
  location: 'Gesundbrunnen, Berlin',
  description: "I learned to tango in Argentina and would like to share my skills in a romantic evening.",
  date: Date.new(2018, 12, 12)
)
tango_date.save!
tango_date.photos.create!(picture: open('https://res.cloudinary.com/dcjfhbk0f/image/upload/v1543318203/come_tango_dancing_at_ballroom_berlin.png'))

salsa_date = bryan.experiences.new(
  title: 'Salsa Dancing at Island Museum',
  category: 'Art & Culture',
  location: 'Museum Island, Berlin',
  description: "I learned the Salsa very recently, and I'd like to go out with someone who wants to learn it as well. Any volunteers?",
  date: Date.new(2018, 12, 12)
)
salsa_date.save!
salsa_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543933937/Date%20Experiences/10805617004_7a84e32d61_k.jpg'))

dungeons_date = bryan.experiences.new(
  title: 'Play as a high level NPC in a D&D campaign.',
  category: 'Geek & Nerd',
  location: 'Berlin',
  description: "My D&D group needs someone to fill in as a high level NPC elf character. Previous RPG experience would be welcome, but totally not necessary. Who wants in?",
  date: Date.new(2018, 12, 12)
)
dungeons_date.save!
dungeons_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543934388/Date%20Experiences/half-elf-ranger-moon-elf-aaron_miller1.jpg'))

#Marcel
soen_date = marcel.experiences.new(
  title: 'Soen Concert at SO36',
  category: 'Music',
  location: ' Oranienstraße 190, 10999 Berlin',
  description: "In search for someone cool to go with me to the Soen concert. They are one of the best bands I've ever listened to!",
  date: Date.new(2019, 05, 20)
)
soen_date.save!
soen_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543928606/9353236be25c223829c9f75ded40b3d8.jpg'))

spitfire_date = marcel.experiences.new(
  title: 'Flying the historical Spitfire!',
  category: 'Bucketlist',
  location: 'London Biggin Hill Airport (BQH - EGKB)',
  description: "My boss gave me a big bonus this year, so I wanted to take the chance to fly this legendary machine! The whole experience is made for two people, and I'd love to give this chance to another lover of aviation history!",
  date: Date.new(2019, 10, 30)
)
spitfire_date.save!
spitfire_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543929067/13422226_1218727744818350_1061855184169248769_o.jpg'))

lotr_date = marcel.experiences.new(
  title: 'Watch the Lord of The Rings Extended Trilogy',
  category: 'Geek & Nerd',
  location: 'Cotheniusstraße',
  description: "Let's watch the best trilogy of all time (sorry Star Wars), extended version! No better way to spend the last day of the year! Who's up for it?",
  date: Date.new(2019, 12, 31)
)
lotr_date.save!
lotr_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543929435/lotr.jpg'))

#May-Lee
copenhagen_date = maylee.experiences.new(
  title: 'Weekend trip to Copenhagen',
  category: 'Tourism',
  location: 'Copenhagen',
  description: "Looking for a romantic date? Look no further! Join me in a two-day getaway to Copenhagen. I got two tickets for a cozy train cabin.",
  date: Date.new(2018, 12, 26)
)
copenhagen_date.save!
copenhagen_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543933458/Date%20Experiences/hero-copenhagen-516769472.jpg'))

liquid_date = maylee.experiences.new(
  title: 'Liquidrom ',
  category: 'Sport & Recreation',
  location: 'Kreuzberg, Berlin',
  description: "In dire need of rest after doing a nine week coding bootcamp. Who wants in?",
  date: Date.new(2018, 12, 21)
)
liquid_date.save!
liquid_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543933275/Date%20Experiences/8fb7ddc0644f02ca565105160a7621d2.jpg'))

planetarium_date = maylee.experiences.new(
  title: 'Explore the Abandoned Brewery',
  category: 'Adventure',
  location: 'Berlin, Germany',
  description: "We meet two hours before dusk. Bring your own gear. Experience required!",
  date: Date.new(2018, 12, 26)
)
planetarium_date.save!
planetarium_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543933559/Date%20Experiences/14922e0064cb492a.jpg'))

#Rich
pubcrawl_date = rich.experiences.new(
  title: 'Pub Crawling in Berlin!',
  category: 'Food & Drink',
  location: 'Berlin, Germany',
  description: "We meet at 18:00 sharp, and we start the crawl at Alexaderplatz!",
  date: Date.new(2019, 02, 04)
)
pubcrawl_date.save!
pubcrawl_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543935749/Date%20Experiences/12309753_1668352650074901_9185612671942259442_o.jpg'))

football_date = rich.experiences.new(
  title: 'Borussia vs Hertha Berlin',
  category: 'Sport & Recreation',
  location: 'Olympiastadion, Germany',
  description: "I got two tickets for the game of the year in Berlin. Lot's of beer and goals.",
  date: Date.new(2019, 03, 16)
)
football_date.save!
football_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543930465/Date%20Experiences/840813550.jpg.0.jpg'))

mauer_date = rich.experiences.new(
  title: 'Wood sculpture workshop at Mauerpark',
  category: 'DIY',
  location: 'Mauerpark, Germany',
  description: "I've heard they have some great arts and crafts teachers there, as well as amazing food stands.",
  date: Date.new(2018, 12, 26)
)
mauer_date.save!
mauer_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543936891/Date%20Experiences/mauerpark-berlin-flea-market-VINTAGE-Vinyl-Records.jpg'))

#kaylin
handball_date = kaylin.experiences.new(
  title: 'Handball game at Mauerpark',
  category: 'Sport & Recreation',
  location: 'Mauerpark, Germany',
  description: "My friends bought tickets to this handball game, but I'd love to take someone who actually knows more about the sport. Any candidates?",
  date: Date.new(2019, 05, 04)
)
handball_date.save!
handball_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543930466/Date%20Experiences/action-from-berlin-fchse-pro-handball-match-against-hsg-wetzlar-on-FYE5F8.jpg'))

katzen_date = kaylin.experiences.new(
  title: 'Date at the Katzen Café',
  category: 'Food & Drink',
  location: 'Malchower Weg 68, Germany',
  description: "I am not a weird cat lady, but I do love cats. People say this place serves amazing coffee with cake. Any handsome fella would like to join me?",
  date: Date.new(2019, 03, 16)
)
katzen_date.save!
katzen_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543938719/Date%20Experiences/ol6i0qrlih2oix1jralc.jpg'))

braden_date = kaylin.experiences.new(
  title: 'Guided tour around Berlin',
  category: 'Community',
  location: 'Pariser Platz, Germany',
  description: "I'm going to do the free guided tour around Berlin, but I don't want to do it alone. It would be pretty nice meeting someone from Berlin to give me a more private education.",
  date: Date.new(2018, 05, 17)
)
braden_date.save!
braden_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543938950/Date%20Experiences/BrandenburgerTor_c_visitBerlin_Foto_Schramm_3_von_9__OCV_DL_PPT_0.jpg'))


puts "Database seeded with 12 users and #{Experience.all.length} experiences"
