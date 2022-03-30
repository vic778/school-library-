require_relative '../modules/music'

describe Genre do
  context 'Should test Genre class' do
    genre = Genre.new 'pop'

    it 'genre should be Genre instantiation' do
      expect(genre).to be_instance_of Genre
    end

    it 'should return correct genre name' do
      expect(genre.name).to eq 'pop'
    end
  end
end
