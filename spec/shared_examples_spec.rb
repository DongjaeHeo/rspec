require_relative '../lib/sausage_link'
require_relative 'shared_examples_2_spec'


RSpec.describe Array do
  subject { [1, 2, 3] }
  include_examples 'a Ruby object with three elements'
end
RSpec.describe String do
  subject { 'abc'}
  include_examples 'a Ruby object with three elements'
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3}}
  include_examples 'a Ruby object with three elements'
end

RSpec.describe SausageLink do
  subject { described_class.new}
  include_examples 'a Ruby object with three elements'
end
