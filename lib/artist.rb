class Artist

  attr_reader :id, :name, :born, :died, :country

  def initialize(input_data)
    @id = input_data[:id]
    @name = input_data[:name]
    @born = input_data[:born]
    @died = input_data[:died]
    @country = input_data[:country]
  end

end
