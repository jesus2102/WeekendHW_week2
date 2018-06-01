class Guest

  attr_reader(:name, :wallet)
  attr_writer(:wallet)

  def initialize(name, wallet, fav_song)

    @name = name
    @wallet = wallet
    @fav_song = fav_song

  end

  def pay_fee(room)
    @wallet -= room.fee()
  end

  def fav_song(song)
    return "Whooo" if @fav_song == song
  end

end
