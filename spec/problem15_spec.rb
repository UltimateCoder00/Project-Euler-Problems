require 'problem15'

describe 'Problem15' do

  describe 'Lattice Paths' do
    it 'Works Out The Lattice Paths Of 2x2' do
      expect(lattice_paths(2)).to eq 6
    end

    it 'Works Out The Lattice Paths Of 20x20' do
      expect(lattice_paths(20)).to eq nil
    end
  end
end
