class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    self.genres[0]
    # binding.pry
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.size
    # binding.pry
  end

  def genre_count
    #return the number of genres associated with the artist
    self.genres.size
  end
end
