require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../..river")
require_relative("../..fish")

class RiverTest < MiniTest::Test

def setup()
  @river = River.new("Colorado", @fish)

  @fish_1 = Fish.new("Salmon")
  @fish_2 = Fish.new("Trout")
  @fish_3 = Fish.new("Grayling")

  @fish = [@fish_1, @fish_2, @fish_3]
end

def setup
  @fish1=Fish.new("Salmon")
  @fish2=Fish.new("Trout")
  @fish3=Fish.new("Grayling")
  @fish4=Fish.new("Steelhead")

  @fish = [@fish1, @fish2, @fish3]

  @bear=Bear.new("Smokey", "Grizzly")

  @river=River.new("Colorado", @fish)
end

  def test_river_name()
    assert_equal("Colorado", @river.name)
  end

  def test_river_contents()
    assert_equal(3, @river.fish_count())
  end

  def test_add_fish()
    @river.add_fish(@fish4)
    assert_equal(4, @river.fish_count())
  end

  def test_remove_fish()
    @river.remove_fish(@fish1)
    assert_equal(2, @river.fish_count())
  end

  def test_bear_takes_fish_from_river()
    @bear.add_fish(@fish2)
    @river.remove_fish(@fish2)
    assert_equal(1, @bear.stomach_contents)
    assert_equal(2, @river.fish_count())
  end


end
