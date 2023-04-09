RSpec.describe 'not_to method' do
  it 'chekcs for the inverse of a matcher' do
    expect(5).not_to eql(5.0)
    expect([1, 2, 3]).not_to equal([1, 2, 3])
    expect(10).not_to be_odd
    expect([1]).not_to be_empty

    expect(nil).not_to be_truthy
    expect(1).not_to be_falsey

    expect('korea').not_to start_with('norht')

    expect(5).not_to respond_to(:length)

    expect([:a]).not_to include(:b)

    expect { 1 + 1 }.not_to raise_error
  end
end
