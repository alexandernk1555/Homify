# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Viewing.destroy_all
Match.destroy_all
Listing.destroy_all
Search.destroy_all
User.destroy_all

user_1 = User.create!(
	first_name: "Olivia",
	last_name: "Fernandez",
	email: "olivia@gmail.com",
	password: "123456",
	profile_picture: "https://media.istockphoto.com/id/614114928/photo/young-beautiful-woman.jpg?s=612x612&w=0&k=20&c=pgX41W9oQXnfARjOBzLTu3msjjT1n0L7rFOKa5VuQ54=",
	gender: "female",
	age: 27
)

user_2 = User.create!(
	first_name: "Amelia",
	last_name: "Richard",
	email: "amelia@gmail.com",
	password: "123456",
	profile_picture: "https://media.baerkarrer.ch/karmarun/image/upload/baer-karrer/sbjf3nj4ar3peoj2cg4n.jpg",
	gender: "female",
	age: 27
)

user_3 = User.create!(
	first_name: "Olivier",
	last_name: "Bernard",
	email: "olivier@gmail.com",
	password: "123456",
	profile_picture: "https://ihrweg.com/wp-content/uploads/2018/09/Ein-Erwachsener-Mann-Wird-Niemals-Diese-8-Dinge-Tun-1.jpg.webp",
	gender: "male",
	age: 36
)

user_4 = User.create!(
	first_name: "Isla",
	last_name: "Azao",
	email: "isla@gmail.com",
	password: "123456",
	profile_picture: "https://www.ozelu.com/assets/images/Before%20After/Woman-Passport-Size-Photo-Sample1-Before.jpg",
	gender: "female",
	age: 31
)

user_5 = User.create!(
	first_name: "Arthur",
	last_name: "Hermann",
	email: "arthur@gmail.com",
	password: "123456",
	profile_picture: "https://dhcapital.com/wp-content/uploads/2018/03/dean_mann.jpg",
	gender: "male",
	age: 49
)

user_6 = User.create!(
	first_name: "Noah",
	last_name: "Lambrecht",
	email: "noah@gmail.com",
	password: "123456",
	profile_picture: "https://live.staticflickr.com/8724/16976740485_fe1579c5a5_b.jpg",
	gender: "male",
	age: 29
)

user_7 = User.create!(
	first_name: "Ava",
	last_name: "Lee",
	email: "ava@gmail.com",
	password: "123456",
	profile_picture: "https://i.pinimg.com/originals/19/e2/e6/19e2e62504dac9275f2ff318279b316f.jpg",
	gender: "female",
	age: 28
)

user_8 = User.create!(
	first_name: "Mia",
	last_name: "Kuhlmann",
	email: "mia@gmail.com",
	password: "123456",
	profile_picture: "https://i.pinimg.com/736x/90/a5/72/90a57297850ac8c04debd09237474adf.jpg",
	gender: "female",
	age: 32
)

user_9 = User.create!(
	first_name: "Oscar",
	last_name: "Talnikova",
	email: "oscar@gmail.com",
	password: "123456",
	profile_picture: "https://t4.ftcdn.net/jpg/04/62/98/35/360_F_462983558_dqqHfNZTmWXIhFKZV2mjuEGrIxElszAk.jpg",
	gender: "male",
	age: 58
)

user_10 = User.create!(
	first_name: "Jonas",
	last_name: "Pavl",
	email: "jonas@gmail.com",
	password: "123456",
	profile_picture: "https://qph.cf2.quoracdn.net/main-qimg-5eb631ae6f587af2631f6d3348047693.webp",
	gender: "male",
	age: 31
	)

user_11 = User.create!(
	first_name: "Ivy",
	last_name: "Vinogradova",
	email: "ivy@gmail.com",
	password: "123456",
	profile_picture: "https://w0.peakpx.com/wallpaper/23/627/HD-wallpaper-yasmin-wijnaldum-women-model-dutch-green-eyes-simple-background-white-background-face-brunette-dark-hair-long-hair-thumbnail.jpg",
	gender: "female",
	age: 26
)

user_12 = User.create!(
	first_name: "Klaus",
	last_name: "Werner",
	email: "klaus@gmail.com",
	password: "123456",
	profile_picture: "https://media.istockphoto.com/id/1295105726/de/foto/mittelalter-mann-zu-hause-w%C3%A4hrend-coronavirus-quarant%C3%A4ne.jpg?s=612x612&w=0&k=20&c=AIqFpr_sXT1Wl2aAGtpW7a-IDUOc2uj-x3g38P8X2RA=",
	gender: "male",
	age: 60
)

user_13 = User.create!(
	first_name: "Rosie",
	last_name: "Taylor",
	email: "rosie@gmail.com",
	password: "123456",
	profile_picture: "https://i.pinimg.com/736x/d4/f0/31/d4f031bc6e270edf7bd97437be942eee.jpg",
	gender: "female",
	age: 29
)

user_14 = User.create!(
	first_name: "Lily",
	last_name: "Price",
	email: "lily@gmail.com",
	password: "123456",
	profile_picture: "https://i.pinimg.com/originals/bb/49/f3/bb49f343bcc8e219b9ac9aaefd8ff120.jpg",
	gender: "female",
	age: 26
)

user_15 = User.create!(
	first_name: "George",
	last_name: "Knopp",
	email: "george@gmail.com",
	password: "123456",
	profile_picture: "https://data.whicdn.com/images/295726239/original.jpg",
	gender: "male",
	age: 27
)

user_16 = User.create!(
	first_name: "Isabella",
	last_name: "Krammer",
	email: "isabella@gmail.com",
	password: "123456",
	profile_picture: "https://static01.nyt.com/images/2019/03/22/travel/female-solo-slide-H36M/female-solo-slide-H36M-jumbo.jpg",
	gender: "female",
	age: 36
)

user_17 = User.create!(
	first_name: "Harry",
	last_name: "Houston",
	email: "harry@gmail.com",
	password: "123456",
	profile_picture: "https://t4.ftcdn.net/jpg/00/40/86/85/360_F_40868511_z0T2aLzB7V6xd0lV7Bxc7DYNOynV0Dkp.jpg",
	gender: "male",
	age: 32
)

user_18 = User.create!(
	first_name: "Leo",
	last_name: "Gonzalez",
	email: "leo@gmail.com",
	password: "123456",
	profile_picture: "https://qph.cf2.quoracdn.net/main-qimg-6cdacca8b9af4283eac60abbc764faf7.webp",
	gender: "male",
	age: 27
)

user_19 = User.create!(
	first_name: "Sophia",
	last_name: "Jaspers",
	email: "sophia@gmail.com",
	password: "123456",
	profile_picture: "https://i.pinimg.com/736x/67/1c/30/671c30920b5cd5694d1ccac86c310efa--beauty-makeup-hair-and-makeup.jpg",
	gender: "female",
	age: 28
)

user_20 = User.create!(
	first_name: "Muhammad",
	last_name: "Öztürk",
	email: "muhammad@gmail.com",
	password: "123456",
	profile_picture: "https://media.istockphoto.com/id/878395336/de/foto/portr%C3%A4t-der-gesch%C3%A4ftsmann-l%C3%A4chelnd-an-wand.jpg?s=612x612&w=0&k=20&c=4xJsVvii5Y1AhJHzLVybLN07wb2i6EnSAN0OxLtnOIw=",
	gender: "male",
	age: 47
)

puts "#{User.count} users created"
puts "Creating listings ..."


listing_1 = Listing.create!(
	price: 1650,
	bedrooms: 1,
	bathrooms: 1,
	address: "Tarpenbekstraße 112, 20251 Hamburg, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "This bright property is situated on the first floor of a converted period building and is only a few minutes’ walk from all the transport facilities and amenities Putney has to offer. Towards the front is an open-plan kitchen/reception room with wood floors and high ceilings allowing for an abundance of natural light. At the rear of the property are two double bedrooms, both with built-in wardrobes, and a modern bathroom with bath and shower over.",
	property_type: "Apartment",
	area_size: 45,
	floor: 1,
	garden: false,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_2 = Listing.create!(
	price: 2450,
	bedrooms: 2,
	bathrooms: 2,
	address: "Saarlandstraße 17, 22303 Hamburg, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: " A first floor 1 bedroom balcony apartment within a period building overlooking the Alster. This property benefits from a large balcony and separate kitchen area. The balcony can be accessed via the bedroom as well as the lounge.",
	property_type: "Apartment",
	area_size: 70,
	floor: 1,
	garden: false,
	balcony: 1,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_3 = Listing.create!(
	price: 2600,
	bedrooms: 3,
	bathrooms: 2,
	address: "Johnsallee 17, 20148 Hamburg, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "Newly refurbished studio apartment. Set on the 2nd floor loft area, the apartment is offered on a furnished basis. Comprising of a large open plan room, wood floor and large windows which afford lots of natural light into the room. There is a small kitchenette with a two hob counter top unit (washing machine is located on the first floor), the double room has ample storage space available and a sleekly designed bathroom. Other benefits include secure location. Located close to good transport links for Hounslow West,High Street Hounslow and excellent bus frequency available.",
	property_type: "Apartment",
	area_size: 110,
	floor: 2,
	garden: false,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: true,
	user: user_2
)

listing_4 = Listing.create!(
	price: 2999,
	bedrooms: 3,
	bathrooms: 2,
	address: "Lorettostraße 34, 40219 Düsseldorf, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "This bright property is finished to the highest standard and comprises of a fully fitted modern kitchen with dining area and a light reception room with full double height ceilings and tasteful décor throughout. A mezzanine study area overlooking the reception room, master bedroom suite with walk in dressing area and a large bathroom along with a further double bedroom and guest bathroom. This property also benefits from secure allocated parking space in the gated building.",
	property_type: "Apartment",
	area_size: 120,
	floor: 2,
	garden: false,
	balcony: 0,
	parking: true,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_5 = Listing.create!(
	price: 1990,
	bedrooms: 2,
	bathrooms: 1,
	address: "Bernstorffstraße 5, 22769 Hamburg, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "This property benefits from an impressive 68 foot private south facing garden accessed directly from the reception room and a balcony off the two smaller bedrooms. Every room in this stunning apartment is flooded with natural light and excellent storage. The property has just been newly redecorated throughout.",
	property_type: "Apartment",
	area_size: 65,
	floor: 3,
	garden: true,
	balcony: 1,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_6 = Listing.create!(
	price: 2455,
	bedrooms: 3,
	bathrooms: 2,
	address: "Rheinallee 100, 40545 Düsseldorf, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A stunning, chic, modern, high-ceiling split-level penthouse apartment in a prestigious period building. The apartment comprises three bedrooms with ample wardrobes, cupboards, and storage spaces; two elegant marble bathrooms - one end-suite; an amazing huge lofty open reception, dining, entertaining area with a contemporary top-end designer’s kitchen with high-end appliances and granite worktop. The whole apartment has underfloor heating throughout which provides extra comforts under your feet. The beautiful skylights and floor-to-ceiling windows provide abundant natural light to the apartment even in the dark winters, and it further benefits from a huge private roof terrace which is very rare! It also has direct lift access to the apartment.",
	property_type: "Penthouse",
	area_size: 130,
	floor: 4,
	garden: false,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: true,
	furnished: false,
	user: user_1
)

listing_7 = Listing.create!(
	price: 2600,
	bedrooms: 4,
	bathrooms: 2,
	address: "Kaiser-Friedrich-Ring 26, 40545 Düsseldorf, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "If proceeding without a physical viewing please note that you must make all necessary additional investigations to satisfy yourself that all requirements you have of the property will be met. Video content and other marketing materials shown are believed to fairly represent the property at the time they were created.",
	property_type: "Apartment",
	area_size: 180,
	floor: 2,
	garden: false,
	balcony: 0,
	parking: true,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_8 = Listing.create!(
	price: 3990,
	bedrooms: 4,
	bathrooms: 4,
	address: "Gerichtstraße 19, 22765 Hamburg, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A beautiful four bedroom duplex apartment situated in this stunning luxury new development with the benefit of off street parking and access to beautifully maintained communal gardens. The property features four bedrooms, four bathrooms, large reception with double height ceiling and mezzanine level, separate fully integrated kitchen, dining room, wood flooring, underfloor heating in bathrooms, comfort cooling, Aqua vision TV in master bathroom, Lutron LED lighting and video entry system. The apartment also has a terrace that runs the length of the top floor.",
	property_type: "Apartment",
	area_size: 190,
	floor: 2,
	garden: true,
	balcony: 0,
	parking: true,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_9 = Listing.create!(
	price: 3200,
	bedrooms: 2,
	bathrooms: 2,
	address: "Luegallee 68, 40545 Düsseldorf, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "Double bedroom apartment available. There is one large master bedroom and a smaller double bedroom. Both bedrooms have built-in wardrobes. Offered part furnished.",
	property_type: "Apartment",
	area_size: 145,
	floor: 2,
	garden: false,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: true,
	user: user_2
)

listing_10 = Listing.create!(
	price: 2200,
	bedrooms: 3,
	bathrooms: 2,
	address: "Lübecker Str. 5, 22087 Hamburg, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "Arranged over 2 floors, this 4 bed terraced flat offers ample floor space with neutral interiors. An abundance of natural light is well accompanied by an open plan reception leading to a private garden.",
	property_type: "Apartment",
	area_size: 110,
	floor: 1/2,
	garden: true,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_11 = Listing.create!(
	price: 1700,
	bedrooms: 2,
	bathrooms: 2,
	address: "Düsseldorfer Str. 56, 40545 Düsseldorf, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A truly stunning 2 bedroom, 2 bathroom apartment with private terrace. Offering a spacious interior designed and finished to a very high specification. Comprising of a large open plan lounge / kitchen, 2 luxury bathrooms and 2 double bedrooms. Further benefiting from a private terrace.",
	property_type: "Apartment",
	area_size: 70,
	floor: 2,
	garden: true,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_12 = Listing.create!(
	price: 5000,
	bedrooms: 4,
	bathrooms: 2,
	address: "Heinrich-Heine-Gärten 2, 40549 Düsseldorf, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A recently refurbished apartment finished to exacting standards on the 1st floor of this popular portered building with lift access. The property benefits from wood flooring, fully equipped kitchen with Miele appliances, four bathrooms and large terrace. Furnished or unfurnished. Long let.",
	property_type: "Apartment",
	area_size: 190,
	floor: 1,
	garden: true,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: true,
	furnished: true,
	user: user_2
)

listing_13 = Listing.create!(
	price: 4200,
	bedrooms: 4,
	bathrooms: 3,
	address: "Wildenbruchstraße 68, 40545 Düsseldorf, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A newly refurbished four bedroom lateral apartment in this prestigious portered mansion block with lift and communal gardens, the ideal family flat! The apartment is within Bousfield catchment area and with easy access to Earls Court Road tube station as well as Gloucester Road. Both South Kensington and Chelsea are also within a short walk.",
	property_type: "Apartment",
	area_size: 168,
	floor: 2,
	garden: false,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_14 = Listing.create!(
	price: 3200,
	bedrooms: 3,
	bathrooms: 2,
	address: "Juliusstraße 40, 22769 Hamburg, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A BEAUTIFUL three-bedroom penthouse presented in EXCELLENT CONDITION located in Hamburg. This MODERN property comes FURNISHED OR UNFURNISHED and benefits from an OPEN PLAN kitchen and reception area, three GOOD-SIZED bedrooms with one EN-SUITE, tow modern bathrooms and a PRIVATE GARDEN.",
	property_type: "Apartment",
	area_size: 138,
	floor: 3,
	garden: true,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_15 = Listing.create!(
	price: 3400,
	bedrooms: 4,
	bathrooms: 2,
	address: "Karolinenstraße 13, 20355 Hamburg, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A bright and spacious apartment located in a popular and secure period mansion block. The property comprises of a beautiful reception room leading to the dining room, principal bedroom with an en suite, two further bedrooms, a very spacious kitchen/breakfast room, one wet room and a further bathroom.",
	property_type: "Apartment",
	area_size: 157,
	floor: 2,
	garden: false,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_16 = Listing.create!(
	price: 2700,
	bedrooms: 2,
	bathrooms: 2,
	address: "Borstelmannsweg 34, 20537 Hamburg, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "Close to both the village and the tube is this top floor two bedroom, flat set within a detached Victorian house. The property benefits from two bathrooms, a large bright reception room, modern kitchen, communal gardens and two balconies.",
	property_type: "Apartment",
	area_size: 66,
	floor: 2,
	garden: true,
	balcony: 2,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_17 = Listing.create!(
	price: 2100,
	bedrooms: 3,
	bathrooms: 2,
	address: "Königsallee 20, 40212 Düsseldorf, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "Fully furnished. Available to move 13th December.",
	property_type: "Apartment",
	area_size: 114,
	floor: 1,
	garden: false,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: true,
	user: user_2
)

listing_18 = Listing.create!(
	price: 1800,
	bedrooms: 1,
	bathrooms: 1,
	address: "Prälat-Zistl-Straße 6, 80331 München, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "1 bedroom apartment comprises of a large double bedroom, bathroom, spacious reception room with rear facing views over Hay's Mews and a unique kitchenette. This beautiful prupose built building benefits from spacious living accommodation, lift service and on-site building manager.",
	property_type: "Apartment",
	area_size: 38,
	floor: 5,
	garden: false,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: true,
	furnished: false,
	user: user_1
)

listing_19 = Listing.create!(
	price: 1990,
	bedrooms: 3,
	bathrooms: 1,
	address: "Rabenkopfstraße 31, 81545 München, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A brand newly re-decorated and re-carpeted four bedroom lateral, penthouse apartment with fantastic views of the City. The property comprises of an incredibly generous reception room with a door leading to a South-West facing balcony, a separate kitchen and a well-proportioned dining room. The principal bedroom boasts a great amount of storage and a bathroom which can be used as an en-suite, there are an additional two good sized double bedrooms.",
	property_type: "Penthouse apartment",
	area_size: 42,
	floor: 3,
	garden: false,
	balcony: 1,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: true,
	user: user_2
)

listing_20 = Listing.create!(
	price: 2200,
	bedrooms: 3,
	bathrooms: 2,
	address: "Charles-de-Gaulle-Straße 63, 81737 München, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "Brand new apartments, finished to a high standard. Fantastic views, floor to ceiling windows and wooden floor throughout with underfloor heating. Each apartment has its own private balcony. It has an on-site gym and indoor / outdoor swimming pool. Communal spaces for residents include a rain garden, water features, pavilions and two childs; play areas.",
	property_type: "Apartment",
	area_size: 74,
	floor: 3,
	garden: true,
	balcony: 1,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_21 = Listing.create!(
	price: 1900,
	bedrooms: 1,
	bathrooms: 1,
	address: "Nebelhornstraße 1, 80686 München, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "This amazing flat is situated at the first floor of the building and comprises of 1 large double bedroom, a spacious living room, fully equipped separate kitchen, and a modern bathroom with a bathtub. The property comes fully furnished. The flat benefits from central heating, laminated flooring throughout, and double-glazed windows.",
	property_type: "Apartment",
	area_size: 68,
	floor: 1,
	garden: false,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: true,
	user: user_2
)

listing_22 = Listing.create!(
	price: 2690,
	bedrooms: 3,
	bathrooms: 2,
	address: "Karlspl. 5, 80335 München, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A spectacular 2nd floor 3 bed apartment situated in an Octagon built private gated development. The apartment offers excellent accommodation, benefits include private terrace off the living room and kitchen, 3 double bedrooms, 2 bathrooms (master ensuite), eat in kitchen comfort cooling, utility room, guest cloakroom, underground parking for 2 cars, lift access, 24hr porter and use of beautiful landscaped communal gardens.",
	property_type: "Apartment",
	area_size: 82,
	floor: 2,
	garden: true,
	balcony: 0,
	parking: true,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: true,
	furnished: false,
	user: user_1
)

listing_23 = Listing.create!(
	price: 2980,
	bedrooms: 3,
	bathrooms: 2,
	address: "Drakestraße 14, 40545 Düsseldorf, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A fantastic selection of one, two and three-bedroom apartments located in Makers House. The apartments are fully furnished and offer large bedrooms and open-plan living spaces, wood flooring, high-spec appliances and all have access to private balconies.",
	property_type: "Apartment",
	area_size: 91,
	floor: 2,
	garden: false,
	balcony: 2,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: true,
	user: user_2
)

listing_24 = Listing.create!(
	price: 3200,
	bedrooms: 4,
	bathrooms: 2,
	address: "Heidenkampsweg 7, 20097 Hamburg, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "Check out this awesome 4 bedroom house very close to the Tadworth locale in London. Situated in a residential suburb you’ll be able to relax away from traffic and busier streets. Fitted with a stunning modern interior you’ll be sure to impress with this chic abode. Keep it fresh with this property as it has it’s own private Garden. Drive to your new home and park right up into the available car parking with this property. Here today gone tomorrow! Don’t miss out on this wonderful property and click on the “Enquiry” button below to arrange a time to see the property! #lettingagent #rentals #househunting #estateagents #rentlondonflat",
	property_type: "Apartment",
	area_size: 175,
	floor: 1,
	garden: true,
	balcony: 0,
	parking: true,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_25 = Listing.create!(
	price: 3400,
	bedrooms: 2,
	bathrooms: 1,
	address: "Paul-Heyse-Straße 9, 80336 München, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "This stunning two double bedroom first floor apartment is set within the heart of Mayfair with stunning rear facing views over Hay's Mews. The apartment offers two spacious double bedrooms, a modern fitted bathroom, large reception room and a fully fitted kitchen with further benefits of storage space. Hill Street, benefits from spacious living accommodation, lift service, on-site building manager, and is nestled conveniently between two of London's parks Hyde Park and Green Park. Transport links include London underground stations Green Park, Bond Street and Marble Arch, all within a short stroll away.",
	property_type: "Apartment",
	area_size: 62,
	floor: 4,
	garden: false,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: true,
	furnished: false,
	user: user_1
)

listing_26 = Listing.create!(
	price: 3600,
	bedrooms: 2,
	bathrooms: 2,
	address: "Kistlerhofstraße 8, 81379 München, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "Stunning and immaculate ground and first floor maisonette in period house conversion with direct access to private south facing garden from the reception room. Refurbished to an exceptionally high standard maintaining the original features, with superb entertaining rooms with solid wood flooring.",
	property_type: "Apartment",
	area_size: 104,
	floor: 1,
	garden: true,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_27 = Listing.create!(
	price: 1800,
	bedrooms: 1,
	bathrooms: 1,
	address: "Feldafinger Str. 21, 81477 München, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A one bedroom, two bathroom apartment on the 1st floor of FiftySevenEast, a modern residential development in Dalston. This designer furnished apartment includes a spacious living and dining area, fully fitted kitchen with integrated Siemens appliances, wood flooring, floor-to-ceiling windows, fitted bedroom storage, master en suite, modern bathroom décor and a private terrace. Residents will also have access to a concierge service, landscaped communal garden and a communal roof terrace.",
	property_type: "Apartment",
	area_size: 32,
	floor: 1,
	garden: true,
	balcony: 0,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: true,
	user: user_2
)

listing_28 = Listing.create!(
	price: 4100,
	bedrooms: 3,
	bathrooms: 2,
	address: "Cimbernstr. 24, 40545 Düsseldorf, Oberkassel",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "Situated in a prime location, this exceptional 4 bedroom, 2 bathroom apartment is spaciously arranged over 3 floors and benefits from a generous living space, contemporary fitted kitchen, private balcony.",
	property_type: "Apartment",
	area_size: 170,
	floor: 3,
	garden: false,
	balcony: 1,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_29 = Listing.create!(
	price: 4300,
	bedrooms: 4,
	bathrooms: 2,
	address: "Leopoldstraße 42, 80802 München, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "A newly refurbished four bedroom, four bathroom garden apartment. The property is air-conditioned and offers a modern luxurious living space whilst keeping the historic value of the original building. This outstanding home comprises of a large reception/dining area which leads to large private patio garden, modern kitchen with utility room and large conservatory, four bedrooms all with en-suite bathrooms and fitted wardrobes. Further benefits include off-street parking for one car and access to large communal grassed garden.",
	property_type: "Apartment",
	area_size: 165,
	floor: 3,
	garden: true,
	balcony: 0,
	parking: true,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: false,
	furnished: false,
	user: user_1
)

listing_30 = Listing.create!(
	price: 7000,
	bedrooms: 5,
	bathrooms: 4,
	address: "Maximilianstraße 42, 80538 München, Deutschland",
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg",
	description: "The property comprises of 5 double bedrooms, kitchen, 4 bath/shower rooms, rooms are all carpeted wall to wall with some having built in wardrobes and 1 with a dressing room. The property is situated on the 5th floor of the building which has a lift. This property is ideal for students or professional sharers looking to relocate in this area.",
	property_type: "Apartment",
	area_size: 240,
	floor: 5,
	garden: false,
	balcony: 0,
	parking: true,
	family_status: "family",
	occupation: "",
	pets: true,
	lift: true,
	furnished: false,
	user: user_1
)
