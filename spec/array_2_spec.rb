RSpec.describe Array do
  subject(:sally) do
    ['Ruby', 'RSpec']
  end

  it 'has 2 values' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end
  it 'has 2 values' do
    expect(sally.length).to eq(2)
  end
end
