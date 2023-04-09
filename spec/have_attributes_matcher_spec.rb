require_relative '../lib/professional_wrestler'

RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Stone Cold Steve Austin', 'Stunner') do
    it 'chekcs for object attibuete and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin')
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin') }
  end
end
