require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../..bears")
require_relative("../..fish")
require_relative("../..river")

class BearsTest < MiniTest::Test

  def setup()
   @fish1=Fish.new("Salmon")
   @fish2=Fish.new("Trout")
   @fish3=Fish.new("Grayling")

   @bear=Bear.new("Smokey", "Grizzly")

  end

 def test_bears_name()
   assert_equal("Smokey", @bear.name)
 end

 def test_bears_type()
   assert_equal("Grizzly", @bear.type)
 end

 def test_stomach_contents()
   stomach_contents = @bear.stomach_contents
   assert_equal(0, stomach_contents)
 end

 def test_add_fish_to_stomach()
   @bear.add_fish(@fish1)
   @bear.add_fish(@fish2)
   @bear.add_fish(@fish_3)
   assert_equal(3, @bear.stomach_contents)

 end



end
