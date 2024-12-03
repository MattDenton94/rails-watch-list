# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Movie.create(title: "Casablanca", overview: "A cynical nightclub owner helps his former lover and her husband escape the Nazis in Casablanca during World War II.", poster_url: "https://image.tmdb.org/t/p/original/fv5bg56xbZKLqcfYkfQWZRnnh5L.jpg", rating: 8.5)
Movie.create(title: "Roman Holiday", overview: "A bored and sheltered princess escapes her guardians and falls in love with an American reporter in Rome.", poster_url: "https://image.tmdb.org/t/p/original/qGuIVBXkR26k1nDDkKk6XY4XtLx.jpg", rating: 8.0)
Movie.create(title: "The Notebook", overview: "A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated by their social differences.", poster_url: "https://image.tmdb.org/t/p/original/rNzQyW4f8B8cQegYQWBUKCKgbE6.jpg", rating: 7.9)
Movie.create(title: "Pride & Prejudice", overview: "Sparks fly when spirited Elizabeth Bennet meets the wealthy but reserved Mr. Darcy in this stunning adaptation of Jane Austen's classic.", poster_url: "https://image.tmdb.org/t/p/original/fupE1jRcK4EfEal8lEwCzKHXlII.jpg", rating: 8.1)
Movie.create(title: "Titanic", overview: "A young aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated Titanic.", poster_url: "https://image.tmdb.org/t/p/original/mN89q2Q4AHTwO6TtvxS3N0kIyIE.jpg", rating: 7.9)
Movie.create(title: "Call Me by Your Name", overview: "In 1980s Italy, a romance blossoms between a seventeen-year-old student and the older man hired as his father's research assistant.", poster_url: "https://image.tmdb.org/t/p/original/yc4ppyH6K7Avd4n1fiKjArqRxZl.jpg", rating: 8.0)
Movie.create(title: "Eternal Sunshine of the Spotless Mind", overview: "When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.", poster_url: "https://image.tmdb.org/t/p/original/5MwkWH9tYHv3mV9OdYTMR5qreIz.jpg", rating: 8.3)
Movie.create(title: "Her", overview: "In the near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.", poster_url: "https://image.tmdb.org/t/p/original/2hpjSe3RDvH8ZtppQJLO2vvj5gR.jpg", rating: 8.0)
Movie.create(title: "Notting Hill", overview: "The life of a simple bookshop owner changes when he meets the most famous film star in the world.", poster_url: "https://image.tmdb.org/t/p/original/2smGdE1hk2kANWl3D0xLBEzZ9AI.jpg", rating: 7.2)
Movie.create(title: "La La Land", overview: "While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.", poster_url: "https://image.tmdb.org/t/p/original/k66xVQqZ4vqGSUel7d8pX8IuGYg.jpg", rating: 8.0)

Movie.create(title: "Mad Max: Fury Road", overview: "In a post-apocalyptic wasteland, Max teams up with Furiosa to escape a tyrannical warlord and his ruthless army.", poster_url: "https://image.tmdb.org/t/p/original/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg", rating: 8.1)
Movie.create(title: "The Dark Knight", overview: "Batman faces his ultimate test as he battles the Joker, a criminal mastermind who plunges Gotham City into chaos.", poster_url: "https://image.tmdb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg", rating: 9.0)
Movie.create(title: "Gladiator", overview: "A betrayed Roman general seeks revenge against the corrupt emperor who murdered his family and sent him into slavery.", poster_url: "https://image.tmdb.org/t/p/original/ty8fF4vMC6eYF0trPWzgrG20K1s.jpg", rating: 8.5)
Movie.create(title: "John Wick", overview: "A retired hitman seeks vengeance against the gangsters who destroyed his life and killed his beloved dog.", poster_url: "https://image.tmdb.org/t/p/original/2Mk1a3ZSlhKDmYecVe9PSZWZhXl.jpg", rating: 7.4)
Movie.create(title: "Inception", overview: "A skilled thief uses dream-sharing technology to plant an idea in the mind of a corporate heir.", poster_url: "https://image.tmdb.org/t/p/original/qmDpIHrmpJINaRKAfWQfftjCdyi.jpg", rating: 8.8)
Movie.create(title: "Die Hard", overview: "An NYPD officer tries to save his wife and several others taken hostage by terrorists during a Christmas party.", poster_url: "https://image.tmdb.org/t/p/original/aYIfsiF3loED3yqbd3w7MxQnXi2.jpg", rating: 8.2)
Movie.create(title: "The Avengers", overview: "Earth's mightiest heroes must band together to stop Loki and his alien army from enslaving humanity.", poster_url: "https://image.tmdb.org/t/p/original/cezWGskPY5x7GaglTTRN4Fugfb8.jpg", rating: 8.0)
Movie.create(title: "The Matrix", overview: "A hacker discovers the shocking truth about his reality and joins a rebellion to free humanity from machine domination.", poster_url: "https://image.tmdb.org/t/p/original/f89U3ADr1oiB1s9GkdPOEpXUk5H.jpg", rating: 8.7)
Movie.create(title: "Terminator 2: Judgment Day", overview: "A cyborg is sent back in time to protect a boy who holds the key to humanity's survival.", poster_url: "https://image.tmdb.org/t/p/original/weVXMD5QBGeQil4HEATZqAkXeEc.jpg", rating: 8.6)
Movie.create(title: "Spider-Man: No Way Home", overview: "Spider-Man's identity is revealed, leading him to seek the help of Doctor Strange, which causes a multiverse collision.", poster_url: "https://image.tmdb.org/t/p/original/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg", rating: 8.3)
