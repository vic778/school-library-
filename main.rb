require_relative './modules/book'
require_relative './modules/game'
require_relative './modules/music'
require_relative './modules/genre'
require_relative './saveData/music_albums'
require_relative './saveData/save_book'
require_relative './list_item'

class Main
  include ListItems
  include SaveBooks
  include SaveAlbums

  def initialize
    @books = load_books
    @games = []
    @albums = load_albums
    @genres = load_genres
  end

  def start
    puts 'Welcome to the App'
    puts 'Choose an option below:'

    loop do
      option = list_options
      if option == 10
        # save_games(@games)
        save_books(@books)
        break
      end

      list_books if option == 1
      list_albums if option == 2
      list_games if option == 3
      list_genres if option == 4
      list_labels if option == 5
      list_authors if option == 6
      add_book if option == 7
      add_album if option == 8
      add_game if option == 9
    end
  end

  def list_options
    puts '1. List all books'
    puts '2. List all music albums'
    puts '3. List all games'
    puts '4. List all genres'
    puts '5. List all labels'
    puts '6. List all authors'
    puts '7. Add a book'
    puts '8. Add a music album'
    puts '9. Add a game'
    puts '10. Exit'

    gets.chomp.to_i
  end
end

main = Main.new
main.start
