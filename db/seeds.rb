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
  bio: "All around cool guy from the land down under. Looking for fun, energetic people to go out on adventerous dates with.",
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
  to the movies and spending time going to fancy places..",
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
  bio: "New to Berlin, hoping to find cool people to explore this amazing city with. Will be here until the end of January.",
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
  bio: "CEO of the greatest bootcamp on earth. I do actually have a red and white wagon.",
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
  bio: "Straight out of the good old US of A. Trying my luck in Europe after traveling around the world. Looking for a cool morning person to share coffee and maybe go ice skating with :)!",
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
  bio: "Young DJ out of London, trying to break into the Berlin techno scene. I really don't care who you are as long as you are interesting and fun-loving.",
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
  bio: "Bright as the dawn, I'm always in a good mood early in the morning. Looking for someone to dance my nights away with.",
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

# User photos
puts 'Uploading photos...'
boris.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543860812/big_detected_cover_59662824a9b4977b7400007b.jpg'))
andrew.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1542906721/user.jpg'))
marcel.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1542906721/2018-11-22_18.10.49.jpg'))
maylee.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544008614/maylee.jpg'))
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
  description: "I have two tickets for my favorite band and would really like some company. Any takers? It's the perfect opportunity to just ",
  date: Date.new(2018, 12, 20)
)
panic_date.save!
panic_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544024733/Date%20Experiences/unnamed.jpg'))

machupichu_date = aigerim.experiences.new(
  title: 'Trip to Machu Pichu',
  category: 'Bucketlist',
  location: 'Machu Pichu',
  description: "I always wanted to go to this legendary place! Who wants to come with me? All expenses are paid for, except the plane ticket.",
  date: Date.new(2019, 11, 20)
)
machupichu_date.save!
machupichu_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543922328/jeremiah-berman-282409-unsplash.jpg'))

hpcastle_date = aigerim.experiences.new(
  title: 'Help me build a Lego Harry Potter Castle!',
  category: 'Geek & Nerd',
  location: 'Berlin',
  description: "Could use some help building this Lego set I got for Christmas. Would you like to help me? No Slytherins allowed! We can also watch some of the movies while we do it :)",
  date: Date.new(2018, 12, 30)
)
hpcastle_date.save!
hpcastle_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544024481/lego_hp_castle0072_rt.jpg'))

#Alice
feuerle_date = alice.experiences.new(
  title: 'The Feuerle Incense Ceremony',
  category: 'Bucketlist',
  location: 'Hallesches Ufer 70, Berlin',
  description: "Looking for someone sophisticated enough to fully absorb and comprehend the Chinese Incense Ceremony offered by the Feuerle Collection. I will be very demanding in the chat, but only because it is super expensive.",
  date: Date.new(2019, 07, 02)
)
feuerle_date.save!
feuerle_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543939803/Date%20Experiences/1a._1607_the_feuerle_collection19212__photo__def_image__1_2.jpg'))

christmas_date = alice.experiences.new(
  title: 'Christmas Market night',
  category: 'Food & Drink',
  location: 'Kulturbrauerei',
  description: "It's cuffing season! What better way to start it than with a nice night at the local Scandinavian Christmas Market? Gluhwein is on me :)",
  date: Date.new(2019, 06, 27)
)
christmas_date.save!
christmas_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543940019/christmas-market-berlin-IMG_2216.jpg'))

kadeve_date = alice.experiences.new(
  title: 'Getting Lost in KaDeWe',
  category: 'Food & Drink',
  location: 'Tauentzienstraße 21-24, 10789 Berlin',
  description: "The premise is simple: explore the imense KaDeWe. We each have to find a small, 30 euro treat to gift the other person. Let's be try to find something interesting in there!",
  date: Date.new(2018, 12, 12)
)
kadeve_date.save!
kadeve_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544024595/kadewe-berlin-bei-nacht-1.1454516022.jpg'))

#Andrew
desert_date = andrew.experiences.new(
  title: 'Desert Racing in the Australian Outback',
  category: 'Bucketlist',
  location: 'The Great Sandy Desert, Australia',
  description: "Hello, everyone! I've always wanted to ride towards the sunset in the Sandy Desert, but I think it would be much more interesting if I had good company in the car. Who else is interested?",
  date: Date.new(2019, 06, 15)
)
desert_date.save!
desert_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543923292/loic-mermilliod-213394-unsplash.jpg'))

bikeride_date = andrew.experiences.new(
  title: 'Bike ride to Poland',
  category: 'Nature',
  location: 'Poland',
  description: "This is one ride I've been wanting to take since I moved to Berlin a couple of years ago. Just us, our bikes and the cool wind. Bring your own bike!",
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
lewagon_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544025605/797136-bab3b602e5a085872a99161c7fba53d2167d731b.jpg'))

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

#clara
aurora_date = clara.experiences.new(
  title: 'Northern Lights',
  category: 'Bucketlist',
  location: 'Iceland',
  description: "It has been a dream of mine to see the Aurora Borealis. Would really like to share it with someone special who hasn't seen it before, like me.",
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
  description: "I love airshows, and I heard that the one in Berlin is amazing. Especially since the RAF Red Arrows will be there! Any aviation buffs want to tag along? No mansplaining, please.",
  date: Date.new(2019, 05, 04)
)
airshow_date.save!
airshow_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544027125/richard-r-schunemann-795320-unsplash.jpg'))

berghain_date = katharine.experiences.new(
  title: 'DJing at Berghain',
  category: 'Music',
  location: 'Berghain',
  description: "I'll be DJing and Berghain on this night. Looking for an amazing person to sneak into the place with me as my guest. You better be willing to dance all night long!",
  date: Date.new(2019, 12, 07)
)
berghain_date.save!
berghain_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543915962/36312387_1809859525763110_6994761258406772736_o.jpg'))

nature_date = katharine.experiences.new(
  title: 'Visiting Tristan',
  category: 'Art & Culture',
  location: 'Naturekundemuseum, Berlin',
  description: "I heard Tristan is flying off to New York next year! I'd love to say good-bye to this amazing and friendly T-Rex, and would love some company.",
  date: Date.new(2018, 12, 15)
)
nature_date.save!
nature_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543943750/tristan02.jpg'))

#Kaylin
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
lotr_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544025521/conner-bowe-800487-unsplash.jpg'))

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
  title: 'Planetarium visit',
  category: 'Art & Culture',
  location: 'Berlin, Germany',
  description: "I love both astronomy and astrology, celestial objects are really a thing of mine. Could be a very cool and we could learn a lot!",
  date: Date.new(2018, 12, 26)
)
planetarium_date.save!
planetarium_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1543933559/Date%20Experiences/14922e0064cb492a.jpg'))

#Nim
riotrip_date = nimkit.experiences.new(
  title: 'Carnival in Rio',
  category: 'Tourism',
  location: 'Rio de Janeiro, Brazil',
  description: "I want to experience Carnival in Rio! This has always been on my bucketlist. It would be nice to have some company, but bring your A-game and party vibe because it will be a nonstop ride! ",
  date: Date.new(2019, 02, 04)
)
riotrip_date.save!
riotrip_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544027944/agustin-diaz-185846-unsplash.jpg'))

got_date = nimkit.experiences.new(
  title: 'Game of Thrones Board Game',
  category: 'Geek & Nerd',
  location: 'Berlin',
  description: "My friends and I are looking for a sixth player to play an epic campaign of Game of Thrones. We even bought the new expasion. You HAVE to be a fan of the series (book or show).",
  date: Date.new(2019, 05, 04)
)
got_date.save!
got_date.photos.create!(picture: open('https://res.cloudinary.com/dlatcqlhm/image/upload/v1544028250/mauricio-santos-503880-unsplash.jpg'))

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



puts "Database seeded with 12 users and #{Experience.all.length} experiences"
