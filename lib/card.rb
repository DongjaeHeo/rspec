class Card
  attr_accessor :suit, :rank
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  # def type
  #   @type
  # end

  # def new(type)
  #   @type = type
  # end
end

# card = Card.new('star')

# p card.type
