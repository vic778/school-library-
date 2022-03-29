require_relative '../modules/music'

def add_album
  puts 'Enter album name'
  name = gets.chomp
  puts 'Enter album genre'
  genre = gets.chomp
  puts 'publish date(YYYY-MM-DD):'
  publish_date = gets.chomp
  puts ' On spotify?[y/n]'
  on_spotify = gets.chomp == 'y' || false
  @albums.push(MusicAlbum.new(publish_date, on_spotify, name))
  @genres.push(Genre.new(genre))
  puts 'New Album created'
end

def list_albums
  if @albums.length.zero?
    puts 'No albums found!'
  else
    @albums.map do |album|
      puts " Album name: #{album.name} On_spotify: #{album.on_spotify}, Publish Date: #{album.publish_date}"
    end
  end
end

def list_genres
  if @genres.length.zero?
    puts 'No Genres configured!Please add a genre'
  else
    @genres.map do |genre|
      puts "ID:#{genre.id}, GenreName:#{genre.name}"
    end
  end
end
