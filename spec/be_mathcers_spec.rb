RSpec.describe 'be mathcers' do
  it 'can test for turthiness' do
    expect(true).to be_truthy
  end

  it 'can test for faliness' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
  end
  it 'can text for nil' do
    expect(nil).to be_nil

    my_hash = { a: 5 }
    expect(my_hash[:b]).to be_nil
  end

  it 'test' do
    expect({}).to be_empty
    expect([10, 20, 30]).to all(be_even)
    expect([0, 1, 2]).to all(be >= 0)
  end
end
