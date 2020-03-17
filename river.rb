class River

attr_reader :name, :fish
attr_writer :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = []
  end

  def fish_count()
    return @fish.size
  end

  def add_fish(fish)
    @fish.push(fish)
  end

  def remove_fish(fish)
    @fish.delete(fish)
  end

end
