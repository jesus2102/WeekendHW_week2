require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")
require_relative("../room.rb")
require_relative("../guest.rb")

class GuestTest < MiniTest::test

  def setup
    @guest1 = Guest.new("Mary")
    @guest2 = Guest.new("Jonny")
  end




end
