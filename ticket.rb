class Ticket
  attr_reader :event, :price
  def initialize(event, price)
    @event = event
    @price = price
  end

  def event_name
    event
  end

  def event_price
    price
  end
end

p Ticket.new("Rapid", 34.3)

class Publication
  attr_accessor :publisher
end

class Magazine < Publication
  attr_accessor :editor
end

p Publication.new.publisher = "Claudiu"
p Magazine.new.publisher = "Garba Ion"
p Magazine.new.editor = "Garba"
