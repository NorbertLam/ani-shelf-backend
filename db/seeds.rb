# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require_relative '../data.rb'

AnimeData.spring.each do |anime|
    genres = anime[:genres].join(", ")
    animeId = anime[:id]
    malId = anime[:idMal]
    title = anime[:title][:romaji]
    desc = anime[:description]
    coverImage = anime[:coverImage][:extraLarge]
    startDate = "#{anime[:startDate][:month]} #{anime[:startDate][:day]}, #{anime[:startDate][:year]}"
    trailerSite = "null"
    trailerId = "null"
    if anime[:trailer] != "null"
        trailerSite = anime[:trailer][:site]
        trailerId = anime[:trailer][:id]
    end
    season = anime[:season]
    seasonInt = anime[:seasonInt]
    year = anime[:startDate][:year]
     Anime.create(anime_id:animeId, mal_id: malId, title: title, 
        desc: desc , image:coverImage, genres: genres,
        trailer_site: trailerSite, trailer_id: trailerId, start_date: startDate,
        season: season, year: year)
end