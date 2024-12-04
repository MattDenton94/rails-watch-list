# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'

movies_data = [
  {
    title: "Casablanca",
    overview: "A cynical nightclub owner helps his former lover and her husband escape the Nazis in Casablanca during World War II.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/e8f2c6db2672342b73fcd837159e28a9",
    rating: 8.5
  },
  {
    title: "Roman Holiday",
    overview: "A bored and sheltered princess escapes her guardians and falls in love with an American reporter in Rome.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/78743820a3b29f40aaa02cbf4574a192",
    rating: 8.0
  },
  {
    title: "The Notebook",
    overview: "A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated by their social differences.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/190c78e77390e71e7fe35e737b71cb7a",
    rating: 7.9
  },
  {
    title: "Pride & Prejudice",
    overview: "Sparks fly when spirited Elizabeth Bennet meets the wealthy but reserved Mr. Darcy in this stunning adaptation of Jane Austen's classic.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/9374f4a55acace2adfba2cb5cf0f4f90",
    rating: 8.1
  },
  {
    title: "Titanic",
    overview: "A young aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated Titanic.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/e46f81a3d20c0669a4b860c04e1c1089",
    rating: 7.9
  },
  {
    title: "Call Me by Your Name",
    overview: "In 1980s Italy, a romance blossoms between a seventeen-year-old student and the older man hired as his father's research assistant.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/cc1de91f9947edeeb0ce16660141c721",
    rating: 8.0
  },
  {
    title: "Eternal Sunshine of the Spotless Mind",
    overview: "When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/5d0698e22d702b6a16730454ef5717c3",
    rating: 8.3
  },
  {
    title: "Her",
    overview: "In the near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/70854ae8616cb9ac88278de37a5c8adc",
    rating: 8.0
  },
  {
    title: "Notting Hill",
    overview: "The life of a simple bookshop owner changes when he meets the most famous film star in the world.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/5ad7754718a401a6b0d948479adad887",
    rating: 7.2
  },
  {
    title: "La La Land",
    overview: "While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/3d70fbd735df42f250c77f5912c97edf",
    rating: 8.0
  },
  {
    title: "Mad Max: Fury Road",
    overview: "In a post-apocalyptic wasteland, Max teams up with Furiosa to escape a tyrannical warlord and his ruthless army.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/599598550ecb8a19bf41d05a754edb93",
    rating: 8.1
  },
  {
    title: "The Dark Knight",
    overview: "Batman faces his ultimate test as he battles the Joker, a criminal mastermind who plunges Gotham City into chaos.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/4e6ff78900ace26c8045eca40699692a",
    rating: 9.0
  },
  {
    title: "Gladiator",
    overview: "A betrayed Roman general seeks revenge against the corrupt emperor who murdered his family and sent him into slavery.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/b310910c57cc41052175885739743c3a",
    rating: 8.5
  },
  {
    title: "John Wick",
    overview: "A retired hitman seeks vengeance against the gangsters who destroyed his life and killed his beloved dog.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/4405cfb032800b10fccc70e9e039e661",
    rating: 7.4
  },
  {
    title: "Inception",
    overview: "A skilled thief uses dream-sharing technology to plant an idea in the mind of a corporate heir.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/5ca174021a85c5119f80841ec50b8f71",
    rating: 8.8
  },
  {
    title: "Die Hard",
    overview: "An NYPD officer tries to save his wife and several others taken hostage by terrorists during a Christmas party.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/997442ec510e627b1b536085dff51d49",
    rating: 8.2
  },
  {
    title: "The Avengers",
    overview: "Earth's mightiest heroes must band together to stop Loki and his alien army from enslaving humanity.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/13ba715bfed691f30ed98402a840d97f",
    rating: 8.0
  },
  {
    title: "The Matrix",
    overview: "A hacker discovers the shocking truth about his reality and joins a rebellion to free humanity from machine domination.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/ea628f1234be44114e8e57e34bb0fdf8",
    rating: 8.7
  },
  {
    title: "Terminator 2: Judgment Day",
    overview: "A cyborg is sent back in time to protect a boy who holds the key to humanity's survival.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/c6299aec40130f0468cf7ef9a9f700ea",
    rating: 8.6
  },
  {
    title: "Spider-Man: No Way Home",
    overview: "Spider-Man's identity is revealed, leading him to seek the help of Doctor Strange, which causes a multiverse collision.",
    poster_url: "https://asset.cloudinary.com/dvdf3jnet/d449e508fa4a6c455ed01712f8ee6dab",
    rating: 8.3
  }
]

movies_data.each do |movie_data|
  file = URI.open(movie_data[:poster_url])
  movie = Movie.new(
    title: movie_data[:title],
    overview: movie_data[:overview],
    rating: movie_data[:rating]
  )
  movie.poster.attach(io: file, filename: "#{movie_data[:title].parameterize}.jpg", content_type: "image/jpeg")
  movie.save
end

