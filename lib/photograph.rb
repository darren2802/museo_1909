class Photograph

  attr_reader :id, :name, :artist_id, :year

  def initialize(input_data)
    @id = input_data[:id]
    @name = input_data[:name]
    @artist_id = input_data[:artist_id]
    @year = input_data[:year]
  end

end
