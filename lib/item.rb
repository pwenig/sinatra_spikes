class Item
  attr_reader :id, :name

  def initialize(id, name)
    #params = params(id)
    @id   = id
    @name = name
  end

end