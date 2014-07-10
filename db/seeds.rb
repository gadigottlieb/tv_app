User.destroy_all
Show.destroy_all
Favorite.destroy_all

gadi = User.create!(
  username: "gadspads24",
  first_name: "Gadi",
  last_name: "Gottlieb",
  password: "qwerty",
  password_confirmation: "qwerty",
  email: "gadigottlieb@gmail.com",
  birthday: "1990-05-16",
  phone: "7120485545"
)

bob = User.create!(
  username: "bob",
  first_name: "Bob",
  last_name: "Abbot",
  password: "qwerty",
  password_confirmation: "qwerty",
  email: "bob@hgmail.com",
  birthday: "2001-05-01",
  phone: "7324045426"
)

curb = Show.create!(
  title: "Curb Your Enthusiasm",
  image_url: "http://spiritualitv.files.wordpress.com/2013/04/51q8oy0jll-_sx500_.jpg",
  first_air_date: "2001-01-01",
  plot: "Larry David says sorry.",
  genre: "Comedy",
  network: "HBO"
)

got = Show.create!(
  title: "Game of Thrones",
  image_url: "http://d1mxyp5ceukbya.cloudfront.net/images/game-of-thrones-posters.jpg",
  first_air_date: "2001-11-15",
  plot: "Everybody dies",
  genre: "Fantasy",
  network: "HBO"
)

bad = Show.create!(
  title: "Breaking Bad",
  image_url: "http://www.kino-govno.com/img/42867/Breaking-Bad-Final-Poster.jpg",
  first_air_date: "2016-02-02",
  plot: "Meth dealer",
  genre: "Drama",
  network: "AMC"
)

Favorite.create(
  user_id: gadi.id,
  show_id: curb.id,
  comment: "Awesome",
  rating: 10
)
Favorite.create(
  user_id: gadi.id,
  show_id: got.id,
  comment: "WTF?",
  rating: 8
)

Favorite.create(
  user_id: bob.id,
  show_id: got.id,
  comment: "King of the North",
  rating: 9
)

Favorite.create(
  user_id: bob.id,
  show_id: bad.id,
  comment: "Meth?",
  rating: 6
)
