require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest::test

  def setup
    @song = Song.new("Bycicle", "Queen")
  end

  


end
