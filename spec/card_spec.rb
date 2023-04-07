require_relative '../lib/card'

RSpec.describe Card do
  let(:card) { Card.new('Ace', 'Spades') }
  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end
  it 'has a suit' do
    # card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end
  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but i got #{card.suit} instead!"
  end
end
# RSpec.describe 'Card' do
#   it 'has a type' do
#     card = Card.new('Ace')
#     expect(card.type).to eq("Ace")
#   end
# end
# RSpec.describe('card') do
#   it 'has a type' do
#     card = Card.new('Trumph')
#     expect(card.type).to eq('Trumph')
#   end
# end
