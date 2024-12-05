# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Bookmark.destroy_all
puts "Clearing database..."
Movie.destroy_all

require 'open-uri'

movies = [
  {
    title: "Casablanca",
    overview: "A cynical nightclub owner helps his former lover and her husband escape the Nazis in Casablanca during World War II.",
    poster_url: "https://res.cloudinary.com/dvdf3jnet/image/upload/fl_preserve_transparency/v1733248338/image_usmmau.jpg?_s=public-apps",
    rating: 8.5
  },
  {
    title: "Roman Holiday",
    overview: "A bored and sheltered princess escapes her guardians and falls in love with an American reporter in Rome.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248377/TVY1Qk5UVmpOV1V3WlRFdFptSTNPUzAwT0RobUxXRmhOVEV0WTJJMU9UZGxNamcwWVRFeVhrRXlYa0ZxY0djXy5fVjFfX2ltdGF0NA==/preview",
    rating: 8.0
  },
  {
    title: "The Notebook",
    overview: "A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated by their social differences.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248361/TVY1Qk1UazNPVE01TmpnNU0xNUJNbDVCYW5CblhrRnRaVFl3TXpBME9ESTMuX1YxX0ZNanBnX1VYMTAwMF9fc215bHRt/preview",
    rating: 7.9
  },
  {
    title: "Pride & Prejudice",
    overview: "Sparks fly when spirited Elizabeth Bennet meets the wealthy but reserved Mr. Darcy in this stunning adaptation of Jane Austen's classic.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248389/TVY1Qk1UQTFORFEzTlRjeU9UTmVRVEplUVdwd1oxNUJiV1UzTURBME16QTRNekVfLl9WMV9fdXE1ZTlz/preview",
    rating: 8.1
  },
  {
    title: "Titanic",
    overview: "A young aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated Titanic.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248399/TVY1Qll6WXlOMkZpWm1VdFlXWXpNeTAwTXpWaUxXSmtaVE10T0dZMVpqZ3pOV013TjJZeFhrRXlYa0ZxY0djXy5fVjFfX25mcmZweQ==/preview",
    rating: 7.9
  },
  {
    title: "Call Me by Your Name",
    overview: "In 1980s Italy, a romance blossoms between a seventeen-year-old student and the older man hired as his father's research assistant.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248410/TVY1Qk5EazNOVEV3TmpjME1WNUJNbDVCYW5CblhrRnRaVGd3TnpZeE5UTXdNeklfLl9WMV9feDBkbXlu/preview",
    rating: 8.0
  },
  {
    title: "Eternal Sunshine of the Spotless Mind",
    overview: "When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248427/TVY1Qk1UWTROemN3T0RnM05sNUJNbDVCYW5CblhrRnRaVGN3TlRFd09UTXlNd18uX1YxX0ZNanBnX1VYMTAwMF9fZDN3a3d3/preview",
    rating: 8.3
  },
  {
    title: "Her",
    overview: "In the near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248442/SGVyMjAxM1Bvc3Rlcl95dmRwMXU=/preview",
    rating: 8.0
  },
  {
    title: "Notting Hill",
    overview: "The life of a simple bookshop owner changes when he meets the most famous film star in the world.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248459/TVY1QlpqWTNZV0k1T1RNdFlUZGxOeTAwWlRaaUxXRXdZakl0TjJNMU1HVmtNRE00WkRFeFhrRXlYa0ZxY0djXy5fVjFfRk1qcGdfVVgxMDAwX196dGdzMGU=/preview",
    rating: 7.2
  },
  {
    title: "La La Land",
    overview: "While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248489/TVY1Qk16VXpORE0yTnpNMk1WNUJNbDVCYW5CblhrRnRaVGd3TlRNM05UZzRPVEVfLl9WMV9fc2l3cTZt/preview",
    rating: 8.0
  },
  {
    title: "Mad Max: Fury Road",
    overview: "In a post-apocalyptic wasteland, Max teams up with Furiosa to escape a tyrannical warlord and his ruthless army.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248573/TVY1QlpEUmtPREpoT1RndE9UYzFPQzAwTlRnekxUazROakl0TkRneFpEWTRZamxtTkRZMlhrRXlYa0ZxY0djXy5fVjFfRk1qcGdfVVgxMDAwX192aG15Ymg=/preview",
    rating: 8.1
  },
  {
    title: "The Dark Knight",
    overview: "Batman faces his ultimate test as he battles the Joker, a criminal mastermind who plunges Gotham City into chaos.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248585/TVY1Qk1UTXhOVE13T0RNME5GNUJNbDVCYW5CblhrRnRaVGN3T0RBeU1UazJNd18uX1YxX19vN2hia28=/preview",
    rating: 9.0
  },
  {
    title: "Gladiator",
    overview: "A betrayed Roman general seeks revenge against the corrupt emperor who murdered his family and sent him into slavery.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248599/R2xhZGlhdG9yX18yODIwMDBfZmlsbV9wb3N0ZXJfMjlfZnNrZHY1/preview",
    rating: 8.5
  },
  {
    title: "John Wick",
    overview: "A retired hitman seeks vengeance against the gangsters who destroyed his life and killed his beloved dog.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248617/TVY1QlkyUTJabUk1WmpVdE5XVmhNQzAwWXpKa0xUbG1Zak10WTJSbVpEaGtOekV6WWpaaFhrRXlYa0ZxY0djXy5fVjFfX2p4bnowbw==/preview",
    rating: 7.4
  },
  {
    title: "Inception",
    overview: "A skilled thief uses dream-sharing technology to plant an idea in the mind of a corporate heir.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248666/TVY1Qk1qQXhNelkzTmpjeE5GNUJNbDVCYW5CblhrRnRaVGN3TlRJNU9UTTBNd18uX1YxX0ZNanBnX1VYMTAwMF9fb3lweXRj/preview",
    rating: 8.8
  },
  {
    title: "Die Hard",
    overview: "An NYPD officer tries to save his wife and several others taken hostage by terrorists during a Christmas party.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248675/TVY1Qk1HTmxZbU0xTm1RdFlXRXhNUzAwTm1SakxUZzVabUV0TW1ZeVl6SmtNemxqWVdNeFhrRXlYa0ZxY0djXy5fVjFfX2ZxcnRidw==/preview",
    rating: 8.2
  },
  {
    title: "The Avengers",
    overview: "Earth's mightiest heroes must band together to stop Loki and his alien army from enslaving humanity.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248685/TVY1Qk5HRTBZVFZqTnpVdE56SmpPUzAwTkdObExUZ3hNemN0WlRZNFlURTFZMlkxWlRVNFhrRXlYa0ZxY0djXy5fVjFfRk1qcGdfVVgxMDAwX194Y21nOGo=/preview",
    rating: 8.0
  },
  {
    title: "The Matrix",
    overview: "A hacker discovers the shocking truth about his reality and joins a rebellion to free humanity from machine domination.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248729/TVY1Qk4yTm1OMlZoTVRRdE1ETmlPUzAwTkRsaExUbGlNamd0T0RFMlpUWTBPRFF5TkRSaFhrRXlYa0ZxY0djXy5fVjFfRk1qcGdfVVgxMDAwX19hYjlpY3g=/preview",
    rating: 8.7
  },
  {
    title: "Terminator 2: Judgment Day",
    overview: "A cyborg is sent back in time to protect a boy who holds the key to humanity's survival.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248737/TVY1Qk5HTXlNR05rTURVdE1qYzJOaTAwTldGbExUZ3lPREV0WlRZMk16QmlaVGcwT1daaVhrRXlYa0ZxY0djXy5fVjFfRk1qcGdfVVgxMDAwX19tdjVkeTY=/previewa",
    rating: 8.6
  },
  {
    title: "Spider-Man: No Way Home",
    overview: "Spider-Man's identity is revealed, leading him to seek the help of Doctor Strange, which causes a multiverse collision.",
    poster_url: "https://res-console.cloudinary.com/dvdf3jnet/thumbnails/v1/image/upload/v1733248751/TVY1Qk1tRmlaR1pqTW1FdE1UQTBOaTAwTXpBMkxUbGpNVFl0WkdJMk1HSm1aV1l6WlRRMlhrRXlYa0ZxY0djXy5fVjFfX2xrYWo4dw==/preview",
    rating: 8.3
  }
]

movies.each do |movie|
  Movie.create(movie)
end
puts "#{Movie.count} movies created!"
