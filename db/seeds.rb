require 'date'

puts 'Dropping database...'

Notification.destroy_all
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
  bio: "All-around cool guy from the Land Down Under. Looking for fun, energetic people to go out on
  adventurous dates with.",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1988, 2, 26),
  admin: true
)

marcel = User.create!(
  email: 'marcelsf23br@gmail.com',
  first_name: 'Marcel',
  last_name: 'Fonseca',
  password: '123456',
  password_confirmation: '123456',
  bio: "Hi there, I'm new to Berlin from Brazil and looking to meet new people. I'm super chill, love going
  to the movies and spending time going to fancy places.",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1987, 10, 30),
  admin: true
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
  birthday: Date.new(1978, 5, 18),
  admin: true
)

aigerim = User.create!(
  email: 'sensotape@gmail.com',
  first_name: 'Aigerim',
  last_name: 'Kalysheva',
  password: '123456',
  password_confirmation: '123456',
  bio: "New to Berlin, hoping to find cool people to explore this amazing city with. Will be here
  until the end of January.",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1993, 3, 4),
  admin: true
)

boris = User.create!(
  email: 'borispaillard@gmail.com',
  first_name: 'Boris',
  last_name: 'Paillard',
  password: '123456',
  password_confirmation: '123456',
  bio: "CEO of the greatest bootcamp on earth. Come take a ride in my red and white wagon.",
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
  bio: "Driver of Le Wagon Berlin. I came to Berlin because it rains so much, just like back home. And I love the city.",
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
  bio: "Straight out of the good old U.S. of A. Trying my luck in Europe after traveling around the world. Looking for
  a cool morning person to share coffee and maybe go ice skating with :)!",
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
  bio: "Sexy and you know it. Quite picky with the dates I create and the ones I'm interested in. Get creative, people!",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1990, 6, 4)
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
  birthday: Date.new(1987, 6, 4)
)

katharine = User.create!(
  email: 'katharine@gmail.com',
  first_name: 'Katharine',
  last_name: 'Doyle',
  password: '123456',
  password_confirmation: '123456',
  bio: "Young DJ out of London, trying to break into the Berlin techno scene. I really don't care who you are
  as long as you are interesting and fun-loving.",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1991, 6, 4)
)

clara = User.create!(
  email: 'claramorgen@gmail.com',
  first_name: 'Clara',
  last_name: 'Morgen',
  password: '123456',
  password_confirmation: '123456',
  bio: "Bright as the dawn, I'm always in a good mood early in the morning. Looking for someone to dance my
  nights away with.",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1992, 6, 4)
)

nimkit = User.create!(
  email: 'nimkit@gmail.com',
  first_name: 'Nimkit',
  last_name: 'Lepcha',
  password: '123456',
  password_confirmation: '123456',
  bio: "Nimkit 2.0: Minor bug fixes, new selection algorithm, multilingual support.",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1993, 6, 4)
)

rhett = User.create!(
  email: 'rhett@gmail.com',
  first_name: 'Rhett',
  last_name: 'Büttrich',
  password: '123456',
  password_confirmation: '123456',
  bio: "Just a very chill dude outta Dresden. I like weed, siestas and techno.",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1995, 07, 03),
)

grissel = User.create!(
  email: 'grissel@gmail.com',
  first_name: 'Grissel',
  last_name: 'Rios',
  password: '123456',
  password_confirmation: '123456',
  bio: "Mexican party animal.",
  gender: 'Female',
  seeking: 'Male',
  birthday: Date.new(1987, 4, 26),
)

paul = User.create!(
  email: 'paul@gmail.com',
  first_name: 'Paul',
  last_name: 'Jelkman',
  password: '123456',
  password_confirmation: '123456',
  bio: "WHY DID MY CODE BREAK?",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1992, 6, 10),
)

dimitri = User.create!(
  email: 'dbo@gmail.com',
  first_name: 'Dimitri',
  last_name: 'Bosch',
  password: '123456',
  password_confirmation: '123456',
  bio: "Movies, Music, Video Games, Coding, I know it all.",
  gender: 'Male',
  seeking: 'Female',
  birthday: Date.new(1986, 3, 04),
)


# User photos
puts 'Uploading photos...'
boris.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543860812/big_detected_cover_59662824a9b4977b7400007b.jpg'))
andrew.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1542906721/user.jpg'))
marcel.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544040404/berlinm.jpg'))
maylee.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544008614/maylee.jpg'))
aigerim.photos.create!(picture: open('https://avatars0.githubusercontent.com/u/41161878?s=460&v=4.jpg'))
rich.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544040229/22228568_10215461503709866_914630491015053537_n.jpg'))
bryan.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544039026/19029529_10209573268588468_1207346413178763227_n.jpg'))
kaylin.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543917552/983731_10152860580735246_1214873563_n.jpg'))
alice.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543915990/highres_273114615.jpg'))
katharine.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543915962/36379031_1809863849096011_3049154311729709056_o.jpg'))
clara.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543916833/13925037_10207203443100530_6062834479516916988_n.jpg'))
nimkit.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543915962/28279218_10214090792476997_8372779178525454463_n.jpg'))
rhett.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544179279/22221641_10209781370963060_8903142038224217857_n.jpg'))
grissel.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544180511/37979454.png'))
paul.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544179279/19399522_10209713821986524_8367820598287982210_n.jpg'))
dimitri.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544182556/story-dimitri-bosh-portrait.jpg'))

# Experiences

#Aigerim
puts 'Creating experiences...'

machupichu_date = aigerim.experiences.new(
  title: 'Trip to Machu Picchu',
  category: 'Bucketlist',
  location: 'Machu Pichu',
  description: "I've always wanted to go to this legendary place! Who wants to come with me? All expenses are paid for,
  except the plane ticket.",
  date: Date.new(2019, 11, 20)
)
machupichu_date.save!
machupichu_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543922328/jeremiah-berman-282409-unsplash.jpg'))

hpcastle_date = aigerim.experiences.new(
  title: 'Help me build a Lego Harry Potter Castle!',
  category: 'Geek & Nerd',
  location: 'Berlin',
  description: "Could use some help building this Lego set I got for Christmas. Would you like to help me? No Slytherins
  allowed! We can also watch some of the movies while we do it :)",
  date: Date.new(2018, 12, 30)
)
hpcastle_date.save!
hpcastle_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544024481/lego_hp_castle0072_rt.jpg'))

#Alice
feuerle_date = alice.experiences.new(
  title: 'The Feuerle Incense Ceremony',
  category: 'Bucketlist',
  location: 'Hallesches Ufer 70, Berlin',
  description: "Looking for someone sophisticated enough to fully absorb and comprehend the Chinese Incense Ceremony offered
  by the Feuerle Collection. I will be very demanding in the chat, but only because it is super expensive.",
  date: Date.new(2019, 07, 02)
)
feuerle_date.save!
feuerle_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543939803/Date%20Experiences/1a._1607_the_feuerle_collection19212__photo__def_image__1_2.jpg'))

christmas_date = alice.experiences.new(
  title: 'Christmas Market Night',
  category: 'Food & Drink',
  location: 'Kulturbrauerei',
  description: "It's cuffing season! What better way to start it than with a nice night at the local Scandinavian Christmas
  Market? Gluhwein is on me :)",
  date: Date.new(2019, 06, 27)
)
christmas_date.save!
christmas_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543940019/christmas-market-berlin-IMG_2216.jpg'))

kadeve_date = alice.experiences.new(
  title: 'Getting Lost in KaDeWe',
  category: 'Food & Drink',
  location: 'Tauentzienstraße 21-24, 10789 Berlin',
  description: "The premise is simple: explore the imemnse KaDeWe. We each have to find a small, 30 euro treat to gift the other person.
  Let's be try to find something interesting in there!",
  date: Date.new(2018, 12, 12)
)
kadeve_date.save!
kadeve_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544024595/kadewe-berlin-bei-nacht-1.1454516022.jpg'))

#Andrew
desert_date = boris.experiences.new(
  title: 'Desert Racing in the Australian Outback',
  category: 'Bucketlist',
  location: 'The Great Sandy Desert, Australia',
  description: "Hello, everyone! I've always wanted to ride towards the sunset in the Sandy Desert, but I think it would be much more
  interesting if I had good company in the car. Who else is interested?",
  date: Date.new(2019, 06, 15)
)
desert_date.save!
desert_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543923292/loic-mermilliod-213394-unsplash.jpg'))

bikeride_date = paul.experiences.new(
  title: 'Bike Ride to Poland',
  category: 'Nature',
  location: 'Poland',
  description: "This is one ride I've been wanting to take since I moved to Berlin a couple of years ago. Just us, our bikes
  and the cool wind. Bring your own bike!",
  date: Date.new(2019, 06, 27)
)
bikeride_date.save!
bikeride_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543930610/Date%20Experiences/Pic-of-the-Day_Norbert-Jedrzejczyk_Tatra-Mountains_Zakopane-Poland.jpg'))

kayak_date = dimitri.experiences.new(
  title: 'Kayaking at Spreewald',
  category: 'Adventure',
  location: 'Raddusch, Lindenstraße 1',
  description: "We paddle, we fall overboard and we laugh. Could be a very nice summer date. Could anyone teach me how to Kayak?",
  date: Date.new(2019, 06, 15)
)
kayak_date.save!
kayak_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543931062/Date%20Experiences/mckayla-crump-715292-unsplash.jpg'))

#Boris


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
  description: "I learned the Salsa very recently, and I'd like to go out with someone who wants to learn it as well.
  Any volunteers?",
  date: Date.new(2018, 12, 12)
)
salsa_date.save!
salsa_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543933937/Date%20Experiences/10805617004_7a84e32d61_k.jpg'))

dungeons_date = bryan.experiences.new(
  title: 'Play as a high level NPC in a D&D campaign.',
  category: 'Geek & Nerd',
  location: 'Berlin',
  description: "My D&D group needs someone to fill in as a high level NPC elf character. Previous RPG experience would
  be welcome, but totally not necessary. Who wants in?",
  date: Date.new(2018, 12, 12)
)

dungeons_date.save!
dungeons_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543934388/Date%20Experiences/half-elf-ranger-moon-elf-aaron_miller1.jpg'))

#clara
aurora_date = clara.experiences.new(
  title: 'Northern Lights',
  category: 'Bucketlist',
  location: 'Iceland',
  description: "It has been a dream of mine to see the Aurora Borealis. Would really like to share it with someone
  special who hasn't seen it before, like me.",
  date: Date.new(2019, 05, 04)
)
aurora_date.save!
aurora_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543943299/Date%20Experiences/jonatan-pie-1196629-unsplash.jpg'))

skating_date = clara.experiences.new(
  title: 'Come Ice-Skate with a total beginner!',
  category: 'Sport & Recreation',
  location: 'Erika Hess Stadium',
  description: "Can anyone teach me how to ice-skate? It will be clumsy and it will be funny.",
  date: Date.new(2019, 12, 04)
)

skating_date.save!
skating_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543943506/Date%20Experiences/vasilios-muselimis-495970-unsplash.jpg'))

#Katharine
airshow_date = katharine.experiences.new(
  title: 'Berlin Air Show',
  category: 'Community',
  location: 'Messestraße 1, 12529 Schönefeld',
  description: "I love airshows, and I heard that the one in Berlin is amazing. Especially since the RAF Red
  Arrows will be there! Any aviation buffs want to tag along? No mansplaining, please.",
  date: Date.new(2019, 05, 04)
)
airshow_date.save!
airshow_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544027125/richard-r-schunemann-795320-unsplash.jpg'))

berghain_date = katharine.experiences.new(
  title: 'DJing at Watergate',
  category: 'Music',
  location: 'Berghain',
  description: "I'll be DJing at Watergate on this night. Looking for an amazing person to sneak into the place
  with me as my guest. You better be willing to dance all night long!",
  date: Date.new(2019, 12, 07)
)
berghain_date.save!
berghain_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544183733/romina-veliz-1129826-unsplash.jpg'))

nature_date = katharine.experiences.new(
  title: 'Visiting Tristan',
  category: 'Art & Culture',
  location: 'Naturekundemuseum, Berlin',
  description: "I heard Tristan is flying off to New York next year! I'd love to say good-bye to this amazing and
  friendly T-Rex, and would love some company.",
  date: Date.new(2018, 12, 15)
)
nature_date.save!
nature_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543943750/tristan02.jpg'))

#Kaylin
handball_date = kaylin.experiences.new(
  title: 'Pickup basketball at Mauerpark',
  category: 'Sport & Recreation',
  location: 'Mauerpark, Germany',
  description: "Who wants to play b-ball with my friends at Mauerpark?",
  date: Date.new(2019, 05, 04)
)
handball_date.save!
handball_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544183557/matthew-lejune-716062-unsplash.jpg'))

katzen_date = kaylin.experiences.new(
  title: 'Date at the Katzen Café',
  category: 'Food & Drink',
  location: 'Malchower Weg 68, Germany',
  description: "I am not a weird cat lady, but I do love cats. People say this place serves amazing coffee with cake.
  Any handsome fella would like to join me?",
  date: Date.new(2019, 03, 16)
)
katzen_date.save!
katzen_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544184021/nathan-dumlao-503377-unsplash.jpg'))

braden_date = kaylin.experiences.new(
  title: 'Guided tour around Berlin',
  category: 'Community',
  location: 'Pariser Platz, Germany',
  description: "I'm going to do the free guided tour around Berlin, but I don't want to do it alone. It would be
  pretty nice meeting someone from Berlin to give me a more private education.",
  date: Date.new(2018, 05, 17)
)
braden_date.save!
braden_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543938950/Date%20Experiences/BrandenburgerTor_c_visitBerlin_Foto_Schramm_3_von_9__OCV_DL_PPT_0.jpg'))

#Marcel
soen_date = marcel.experiences.new(
  title: 'Backstage passes to Soen Concert',
  category: 'Music',
  location: ' Oranienstraße 190, 10999 Berlin',
  description: "In search for someone cool to go with me to the Soen concert. I have backstage passes!",
  date: Date.new(2019, 05, 20)
)
soen_date.save!
soen_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544183838/nick-moore-647831-unsplash.jpg'))

spitfire_date = marcel.experiences.new(
  title: 'Flying the historical Spitfire!',
  category: 'Bucketlist',
  location: 'London Biggin Hill Airport (BQH - EGKB)',
  description: "My boss gave me a big bonus this year, so I wanted to take the chance to fly this legendary machine!
  The whole experience is made for two people, and I'd love to give this chance to another lover of aviation history!",
  date: Date.new(2019, 10, 30)
)
spitfire_date.save!
spitfire_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543929067/13422226_1218727744818350_1061855184169248769_o.jpg'))

lotr_date = dimitri.experiences.new(
  title: 'Watch the Lord of The Rings Extended Trilogy',
  category: 'Geek & Nerd',
  location: 'Cotheniusstraße',
  description: "Let's watch the best trilogy of all time (sorry Star Wars), extended version! No better way to spend
  the last day of the year! Who's up for it?",
  date: Date.new(2019, 12, 31)
)
lotr_date.save!
lotr_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544025521/conner-bowe-800487-unsplash.jpg'))

#May-Lee
copenhagen_date = maylee.experiences.new(
  title: 'Weekend trip to Copenhagen',
  category: 'Tourism',
  location: 'Copenhagen',
  description: "Looking for a romantic date? Look no further! Join me in a two-day getaway to Copenhagen. I have two
  tickets for a cozy train cabin.",
  date: Date.new(2018, 12, 26)
)
copenhagen_date.save!
copenhagen_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543933458/Date%20Experiences/hero-copenhagen-516769472.jpg'))

liquid_date = rhett.experiences.new(
  title: 'Liquidrom ',
  category: 'Sport & Recreation',
  location: 'Kreuzberg, Berlin',
  description: "In dire need of rest after doing a nine week coding bootcamp. Who wants in?",
  date: Date.new(2018, 12, 21)
)
liquid_date.save!
liquid_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543933275/Date%20Experiences/8fb7ddc0644f02ca565105160a7621d2.jpg'))

planetarium_date = maylee.experiences.new(
  title: 'Planetarium visit',
  category: 'Art & Culture',
  location: 'Berlin, Germany',
  description: "I love both astronomy and astrology, celestial objects are really a thing of
  mine. Could be very cool and we could learn a lot!",
  date: Date.new(2018, 12, 26)
)
planetarium_date.save!
planetarium_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543933559/Date%20Experiences/14922e0064cb492a.jpg'))

#Nim
riotrip_date = nimkit.experiences.new(
  title: 'Carnival in Rio',
  category: 'Tourism',
  location: 'Rio de Janeiro, Brazil',
  description: "I want to experience Carnival in Rio! This has always been on my bucketlist. It would be nice to have
  some company, but bring your A-game and party vibe because it will be a nonstop ride! ",
  date: Date.new(2019, 02, 04)
)
riotrip_date.save!
riotrip_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544027944/agustin-diaz-185846-unsplash.jpg'))

got_date = nimkit.experiences.new(
  title: 'Game of Thrones Board Game',
  category: 'Geek & Nerd',
  location: 'Berlin',
  description: "My friends and I are looking for a sixth player to play an epic campaign of Game of Thrones. We even
  bought the new expansion pack. You HAVE to be a fan of the series (book or show).",
  date: Date.new(2019, 05, 04)
)
got_date.save!
got_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544028250/mauricio-santos-503880-unsplash.jpg'))

#Rich
pubcrawl_date = rich.experiences.new(
  title: 'Pub Crawling in Berlin!',
  category: 'Food & Drink',
  location: 'Berlin, Germany',
  description: "We meet at 18:00 sharp, and we start the crawl at Alexanderplatz!",
  date: Date.new(2019, 02, 04)
)

pubcrawl_date.save!
pubcrawl_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543935749/Date%20Experiences/12309753_1668352650074901_9185612671942259442_o.jpg'))

football_date = rich.experiences.new(
  title: 'Borussia vs Hertha Berlin',
  category: 'Sport & Recreation',
  location: 'Olympiastadion, Germany',
  description: "I got two tickets for the game of the year in Berlin. Lots of beer and goals.",
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

#seeddates
rhett_date = rhett.experiences.new(
  title: 'Day trip to Dresden',
  category: 'Sport & Recreation',
  location: 'Dresden, Germany',
  description: "You, me, and twenty thousand ultras. Let’s go to a Dynamo Dresden game and raise some hell. BYO flares and knuckle dusters.",
  date: Date.new(2018, 12, 29)
)

rhett_date.save!
rhett_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544180252/felix-mittermeier-1079133-unsplash.jpg'))

paul_date = paul.experiences.new(
  title: 'Come harvest some herbs with me!',
  category: 'Adventure',
  location: 'Mauerpark, Germany',
  description: "Completely legal, I swear.",
  date: Date.new(2018, 12, 26)
)

paul_date.save!
paul_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544195203/gabriel-jimenez-241711-unsplash.jpg'))

grissel_date = grissel.experiences.new(
  title: 'Romantic weekend at Berghain.',
  category: 'Wildcard',
  location: 'Berghain, Berlin',
  description: "Only party animals allowed! I am finally on vacation and I want 48 straight hours of techno!",
  date: Date.new(2019, 04, 23)
)

grissel_date.save!
grissel_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544180316/alexander-popov-1128599-unsplash.jpg'))

twister_date = clara.experiences.new(
  title: 'Let`s play twister!',
  category: 'DIY',
  location: 'Prenzlauerberg, Germany',
  description: "My boyfriend is out of town and I wanted something fun to do.",
  date: Date.new(2019, 03, 13)
)

twister_date.save!
twister_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544180194/s-l1600.jpg'))

paris_date = boris.experiences.new(
  title: 'Road trip to Paris',
  category: 'Tourism',
  location: 'Paris, France',
  description: "Three days was all I could bear with my Berlin employees. Going to drive my red and white wagon back to Paris on Monday and looking for someone to join for the ride.
",
  date: Date.new(2019, 12, 10)
)

paris_date.save!
paris_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544180565/dylan-fout-592027-unsplash.jpg'))

sfighter_date = dimitri.experiences.new(
  title: 'Beat me at Street Fighter',
  category: 'Geek & Nerd',
  location: 'Prenzlauerberg, Berlin',
  description: "I bet you cannot beat me at Street Fighter II.",
  date: Date.new(2019, 12, 10)
)

sfighter_date.save!
sfighter_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544181854/ehonda-x-edayan.jpg'))


puts "Database seeded with #{User.all.length} users and #{Experience.all.length} experiences"



