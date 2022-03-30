require_relative '../modules/music'

describe MusicAlbum do
  context 'Should test MusicAlbum class' do 
    album = MusicAlbum.new '2020-12-03', true

    it 'album should be MusicAlbum instance' do
      expect(album).to be_instance_of MusicAlbum
    end

    it 'should return correct date' do
      expect(album.publish_date.year).to eq 2020
    end

    it 'should return the correct spotify status' do
      expect(album.on_spotify).to eq true
    end
  end
end