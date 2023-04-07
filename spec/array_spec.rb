RSpec.describe Array do
  it 'should has no value in the array in the beginneing' do
    expect(subject.length).to eq(0)
    subject << "All you need is Ruby"
    expect(subject.length).to eq(1)
  end
end
