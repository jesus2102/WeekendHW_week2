class Room

  def initialize(number)

    @room_number = number
    @playlist = []
    @number_guests = []

  end

  def guest_count
    return @number_guests.length()
  end

  def check_in(guest)
    @number_guests.push(guest)
  end

  def check_out(guest)
    @number_guests.delete(guest)
  end

  def playlist_count
    return @playlist.length()
  end

  def add_song(song)
    @playlist.push(song)
  end

end
