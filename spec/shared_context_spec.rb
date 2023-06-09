RSpec.shared_context 'common' do
  before do
    @food = []
  end
  def some_helper_method
    5
  end
  let(:some_variables) { [1, 2, 3]}
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance variables' do
   expect(@food.length).to eq(0)
   @food << 'Sushi'
   expect(@food.length).to eq(1)
  end

  it 'can reuse instance variables across different examples' do
    expect(@food.length).to eq(0)
  end

  it 'can use shared helper methods' do
    expect(some_helper_method).to eq(5)
  end
end

RSpec.describe 'secondexample in different file' do
  include_context 'common'

  it 'can use shared let variables' do
    expect(some_variables).to eq([1, 2, 3])
  end
end
