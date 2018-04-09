require 'problem48'

describe 'Problem48' do

  describe 'Self Powers' do
    it 'Works Out Self Powers 1' do
      expect(self_powers(10)).to eq 405071317
    end

    it 'Works Out Self Powers 2' do
      expect(self_powers(1000)).to eq 9110846700
    end
  end
end
