class Curator

  attr_reader :photographs, :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photo)
    @photographs << photo
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_photograph_by_id(id)
    @photographs.find_all { |photograph| photograph.id == id }[0]
  end

  def find_artist_by_id(id)
    @artists.find_all { |artist| artist.id == id }[0]
  end

  def find_photographs_by_artist(artist)
    @photographs.find_all { |photograph| photograph.artist_id == artist.id }
  end

  def artists_with_multiple_photographs
    @artists.find_all { |artist| find_photographs_by_artist(artist).count > 1 }
  end

  def photographs_taken_by_artist_from(country)
    @photographs.find_all { |photograph| photograph_artist_country(photograph) == country }
  end

  def photograph_artist_country(photograph)
    @artists.find { |artist| artist.id == photograph.artist_id }.country
  end

end
