require_relative '../lib/hot_chocolate'

RSpec.describe HotChocolate do
  it 'confirms that an object can repond to a method' do
    expect(subject).to respond_to(:drink)
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'confirms as object can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase).with(1).arguments

  end
  it { is_expected.to respond_to(:purchase, :discard) }
  it { is_expected.to respond_to(:purchase).with(1).arguments }
end
