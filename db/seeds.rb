# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

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
	gender: "female",
	age: 27
)

file_olivia = URI.open("https://media.baerkarrer.ch/karmarun/image/upload/baer-karrer/sbjf3nj4ar3peoj2cg4n.jpg")
user_1.profile_photo.attach(io: file_olivia, filename: "pic_olivia.png", content_type: "image/jpg")
user_1.save

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
	price: 1450, 
	bedrooms: 1, 
	bathrooms: 1, 
	city: "Hamburg",
	country: "Germany",
	street: "Tarpenbekstraße 112",
	district: "Eppendorf",
	postcode: 20251,
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

file_1 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_1.photos.attach(io: file_1, filename: "pic_1.png", content_type: "image/png")
listing_1.save

listing_2 = Listing.create!(
	price: 1450, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Saarlandstraße 17",
	district: "Winterhude",
	postcode: 22303,
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

file_2 = URI.open("https://i.pinimg.com/236x/37/e0/e7/37e0e7cb7192b51fa89b2341cf9dd10b.jpg")
listing_2.photos.attach(io: file_2, filename: "pic_2.png", content_type: "image/jpg")
listing_2.save

listing_3 = Listing.create!(
	price: 1600, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Johnsallee 17",
	district: "Rotherbaum",
	postcode: 20148,
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
	user: user_1
)

file_3 = URI.open("https://cdnm.westwing.com/image/upload/v1/contenthub/app/uploads/de/2021/09/03084942/modern-wohnen-wohnen.jpg")
listing_3.photos.attach(io: file_3, filename: "pic_3.png", content_type: "image/jpg")
listing_3.save

listing_4 = Listing.create!(
	price: 1999, 
	bedrooms: 3, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Lottestraße 13",
	district: "Blankenese",
	postcode: 22529,
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

file_4 = URI.open("https://i.pinimg.com/736x/60/5b/04/605b04b04bb3cc0aab16f1208b40383e.jpg")
listing_4.photos.attach(io: file_4, filename: "pic_4.png", content_type: "image/jpg")
listing_4.save

listing_5 = Listing.create!(
	price: 1990, 
	bedrooms: 2, 
	bathrooms: 1, 
	city: "Hamburg",
	country: "Germany",
	street: "Bernstorffstraße 5",
	district: "St. Pauli",
	postcode: 22769,
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

file_5 = URI.open("https://konsumkaiser.files.wordpress.com/2021/04/ny-appart-2.jpg")
listing_5.photos.attach(io: file_5, filename: "pic_5.png", content_type: "image/jpg")
listing_5.save

listing_6 = Listing.create!(
	price: 2455, 
	bedrooms: 3, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Lütt Süderfeld 1",
	district: "Hamm",
	postcode: 22529,
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

file_6 = URI.open("https://www.meine-kueche.de/images/kuechenwelten/moderne-kuechen/image-moderne-kuechen-nolte-portland-405-tavola-571.jpg")
listing_6.photos.attach(io: file_6, filename: "pic_6.png", content_type: "image/jpg")
listing_6.save

listing_7 = Listing.create!(
	price: 850, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Kaiser-Friedrich-Ufer 43",
	district: "Eilbek",
	postcode: 20253,
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

file_7 = URI.open("https://cdnm.westwing.com/image/upload/v1/contenthub/app/uploads/de/2022/02/16123921/schlafzimmer-modern-grey.jpg")
listing_7.photos.attach(io: file_7, filename: "pic_7.png", content_type: "image/jpg")
listing_7.save

listing_8 = Listing.create!(
	price: 990, 
	bedrooms: 2, 
	bathrooms: 1, 
	city: "Hamburg",
	country: "Germany",
	street: "Gerichtstraße 19",
	district: "Altona-Nord",
	postcode: 22765,
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

file_8 = URI.open("https://i.pinimg.com/originals/e7/21/3d/e7213dbcaf70ca4e07f599e64ee43403.jpg")
listing_8.photos.attach(io: file_8, filename: "pic_8.png", content_type: "image/jpg")
listing_8.save

listing_9 = Listing.create!(
	price: 1320, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Gustav-Falke-Straße 58",
	district: "Hohenfelde",
	postcode: 20144,
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
	user: user_1
)

file_9 = URI.open("https://i.pinimg.com/originals/74/c3/d2/74c3d2b660695225483d33f925bbfcd4.jpg")
listing_9.photos.attach(io: file_9, filename: "pic_9.png", content_type: "image/jpg")
listing_9.save

listing_10 = Listing.create!(
	price: 1200, 
	bedrooms: 3, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Lübecker Str. 5",
	district: "Hohenfelde",
	postcode: 22087,
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

file_10 = URI.open("https://i.pinimg.com/originals/f4/bb/1d/f4bb1d43e44d7658e553142273f4a8d6.jpg")
listing_10.photos.attach(io: file_10, filename: "pic_10.png", content_type: "image/jpg")
listing_10.save

listing_11 = Listing.create!(
	price: 1700, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Kippingstraße 16",
	district: "St. Georg",
	postcode: 20144,
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

file_11 = URI.open("https://www.rudnick-aurich.de/images/KUECHEN/bildergalerie-quadrat/kchen_moderne_kchen_dunkel_holz.jpg")
listing_11.photos.attach(io: file_11, filename: "pic_11.png", content_type: "image/jpg")
listing_11.save

listing_12 = Listing.create!(
	price: 1430, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Johnsallee 32",
	district: "Sternschanze",
	postcode: 20148,
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
	user: user_1
)

file_12 = URI.open("https://www.solebich.de/sites/www.solebich.de/files/styles/fluid-fixed-width-1400/public/content/58163/images/5563105-bild-von-dieartige-1667326637.jpg")
listing_12.photos.attach(io: file_12, filename: "pic_12.png", content_type: "image/jpg")
listing_12.save

listing_13 = Listing.create!(
	price: 1400, 
	bedrooms: 2, 
	bathrooms: 1, 
	city: "Hamburg",
	country: "Germany",
	street: "Lichtwarkstraße 9",
	district: "Altona",
	postcode: 20249,
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

file_13 = URI.open("https://cdnm.westwing.com/image/upload/v1/contenthub/app/uploads/de/2022/06/22075254/altbauwohnung-einrichten-style.jpg")
listing_13.photos.attach(io: file_13, filename: "pic_13.png", content_type: "image/jpg")
listing_13.save

listing_14 = Listing.create!(
	price: 3200, 
	bedrooms: 3, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Juliusstraße 40",
	district: "Sternschanze",
	postcode: 22769,
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

file_14 = URI.open("https://archzine.net/wp-content/uploads/2016/06/Altbau-einrichten-so-viel-raum.jpg")
listing_14.photos.attach(io: file_14, filename: "pic_14.png", content_type: "image/jpg")
listing_14.save

listing_15 = Listing.create!(
	price: 3400, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Karolinenstraße 13",
	district: "Karolinenviertel",
	postcode: 20355,
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
	pets: false,
	lift: false,
	furnished: false,
	user: user_1
)

file_15 = URI.open("https://i.pinimg.com/736x/b5/9e/a2/b59ea27808238f6391586489b3f7a1fa.jpg")
listing_15.photos.attach(io: file_15, filename: "pic_15.png", content_type: "image/jpg")
listing_15.save

listing_16 = Listing.create!(
	price: 2700, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Borstelmannsweg 34",
	district: "Hamm",
	postcode: 20537,
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
	pets: false,
	lift: false,
	furnished: false,
	user: user_1
)

file_16 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_16.photos.attach(io: file_16, filename: "pic_16.png", content_type: "image/png")
listing_16.save

listing_17 = Listing.create!(
	price: 2100, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Südring 12",
	district: "Hohenfelde<<<",
	postcode: 22303,
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
	pets: false,
	lift: false,
	furnished: true,
	user: user_1
)

file_17 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_17.photos.attach(io: file_17, filename: "pic_17.png", content_type: "image/png")
listing_17.save

listing_18 = Listing.create!(
	price: 1050, 
	bedrooms: 1, 
	bathrooms: 1, 
	city: "Hamburg",
	country: "Germany",
	street: "Ligusterweg 27",
	district: "Elbbrücken",
	postcode: 22609,
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
	pets: false,
	lift: true,
	furnished: false,
	user: user_1
)

file_18 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_18.photos.attach(io: file_18, filename: "pic_18.png", content_type: "image/png")
listing_18.save

listing_19 = Listing.create!(
	price: 1390, 
	bedrooms: 3, 
	bathrooms: 1, 
	city: "Hamburg", 
	country: "Germany",
	street: "Elbchaussee 409",
	district: "Oberhafen",
	postcode: 22609,
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg", 
	description: "A brand newly re-decorated and re-carpeted four bedroom lateral, penthouse apartment with fantastic views of the City. The property comprises of an incredibly generous reception room with a door leading to a South-West facing balcony, a separate kitchen and a well-proportioned dining room. The principal bedroom boasts a great amount of storage and a bathroom which can be used as an en-suite, there are an additional two good sized double bedrooms.", property_type: "Penthouse apartment", 

	area_size: 42,
	floor: 3,
	garden: false,
	balcony: 1,
	parking: false,
	family_status: "family",
	occupation: "",
	pets: false,
	lift: false,
	furnished: true,
	user: user_1
)

file_19 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_19.photos.attach(io: file_19, filename: "pic_19.png", content_type: "image/png")
listing_19.save

listing_20 = Listing.create!(
	price: 1200, 
	bedrooms: 3, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Nedderndorfer Weg 29",
	district: "Hohenfelde",
	postcode: 22111,
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
	pets: false,
	lift: false,
	furnished: false,
	user: user_1
)

file_20 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_20.photos.attach(io: file_20, filename: "pic_20.png", content_type: "image/png")
listing_20.save

listing_21 = Listing.create!(
	price: 1350, 
	bedrooms: 1, 
	bathrooms: 1, 
	city: "Hamburg",
	country: "Germany",
	street: "Eidechsenstieg 14",
	district: "Elbbrücken",
	postcode: 22549,
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
	user: user_1
)

file_21 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_21.photos.attach(io: file_21, filename: "pic_21.png", content_type: "image/png")
listing_21.save

listing_22 = Listing.create!(
	price: 990, 
	bedrooms: 3, 
	bathrooms: 2, 
	city: "Hamburg", 
	country: "Germany",
	street: "Sülldorfer Kirchenweg 74",
	district: "St. Pauli",
	postcode: 22587,
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

file_22 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_22.photos.attach(io: file_22, filename: "pic_22.png", content_type: "image/png")
listing_22.save

listing_23 = Listing.create!(
	price: 980, 
	bedrooms: 3, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Strandweg 59",
	district: "Bahrenfeld",
	postcode: 22587,
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
	user: user_1
)

file_23 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_23.photos.attach(io: file_23, filename: "pic_23.png", content_type: "image/png")
listing_23.save

listing_24 = Listing.create!(
	price: 1280, 
	bedrooms: 2, 
	bathrooms: 1, 
	city: "Hamburg",
	country: "Germany",
	street: "Heidenkampsweg 7",
	district: "Hammerbrook",
	postcode: 20097,
	# photos: "https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg", 
	description: "Check out this awesome 4 bedroom house. Situated in a residential suburb you’ll be able to relax away from traffic and busier streets. Fitted with a stunning modern interior you’ll be sure to impress with this chic abode. Keep it fresh with this property as it has it’s own private Garden. Drive to your new home and park right up into the available car parking with this property. Here today gone tomorrow! Don’t miss out on this wonderful property and click on the “Enquiry” button below to arrange a time to see the property! #lettingagent #rentals #househunting #estateagents #rentlondonflat", 
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

file_24 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_24.photos.attach(io: file_24, filename: "pic_24.png", content_type: "image/png")
listing_24.save

listing_25 = Listing.create!(
	price: 1400, 
	bedrooms: 2, 
	bathrooms: 1, 
	city: "Hamburg",
	country: "Germany",
	street: "Markusstraße 6",
	district: "Rotherbaum",
	postcode: 20355,
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

file_25 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_25.photos.attach(io: file_25, filename: "pic_25.png", content_type: "image/png")
listing_25.save

listing_26 = Listing.create!(
	price: 1650, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg",
	country: "Germany",
	street: "Großer Burstah 24",
	district: "Neustadt",
	postcode: 20457,
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

file_26 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_26.photos.attach(io: file_26, filename: "pic_26.png", content_type: "image/png")
listing_26.save

listing_27 = Listing.create!(
	price: 1190, 
	bedrooms: 1, 
	bathrooms: 1, 
	city: "Hamburg", 
	country: "Germany",
	street: "Shanghaiallee 10",
	district: "Karolinenviertel",
	postcode: 20457,
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
	user: user_1
)

file_27 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_27.photos.attach(io: file_27, filename: "pic_27.png", content_type: "image/png")
listing_27.save

listing_28 = Listing.create!(
	price: 1220, 
	bedrooms: 3, 
	bathrooms: 2, 
	city: "Hamburg", 
	country: "Germany",
	street: "Sternstraße 72",
	district: "Sternschanze",
	postcode: 20357,
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

file_28 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_28.photos.attach(io: file_28, filename: "pic_28.png", content_type: "image/png")
listing_28.save

listing_29 = Listing.create!(
	price: 1299, 
	bedrooms: 2, 
	bathrooms: 2, 
	city: "Hamburg", 
	country: "Germany",
	street: "Hospitalstraße 66",
	district: "Uhlenhorst",
	postcode: 22767,
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

file_29 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_29.photos.attach(io: file_29, filename: "pic_29.png", content_type: "image/png")
listing_29.save

listing_30 = Listing.create!(
	price: 700, 
	bedrooms: 5, 
	bathrooms: 4, 
	city: "Hamburg",
	country: "Germany",
	street: "Bernadottestraße 54",
	district: "Altona-Nord",
	postcode: 22763,
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

file_30 = URI.open("https://i.pinimg.com/736x/cd/02/a0/cd02a0baa56862b402ee75263260140c.jpg")
listing_30.photos.attach(io: file_30, filename: "pic_30.png", content_type: "image/png")
listing_30.save
