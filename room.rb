class Room

  attr_reader :till, :fee
  attr_writer(:max_capacity)

  def initialize(number, max, fee, till)

    @room_number = number
    @playlist = []
    @guests = []
    @max_capacity = max
    @fee = fee
    @till = till

  end

  def guest_count
    return @guests.length()
  end

  def check_in(guest)

    @guests.push(guest)
  end

  def check_out(guest)
    @guests.delete(guest)
  end

  def playlist_count
    return @playlist.length()
  end

  def add_song(song)
    @playlist.push(song)
  end

  def is_full?()
    return guest_count() >= @max_capacity
  end

  def pay_fee(guest)
    return false if @fee > guest.wallet()
    @till += @fee
  end

end
