class Guest

  attr_reader(:name, :wallet)
  attr_writer(:wallet)

  def initialize(name, wallet)

    @name = name
    @wallet = wallet

  end

  def pay_fee(room)
    @wallet -= room.fee()
  end

end
