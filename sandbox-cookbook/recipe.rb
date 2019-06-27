class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @decription = description
  end
end
