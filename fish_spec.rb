require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../..fish")
require_relative("../..river")

class FishTest < MiniTest::Test

  def setup()
    @fish_1 = Fish.new("Salmon")
    @fish_2 = Fish.new("Trout")
    @fish_3 = Fish.new("Grayling")
  end

  def test_fish_name()
   assert_equal("Salmon",@fish1.name)
  end

end
