require 'problem39'

describe 'Problem39' do

  describe 'Integer Right Triangles' do
    it 'Works Out The Integer Right Triangles Below 1000' do
      expect(integer_right_triangles(1000)).to eq 840
    end
  end
end
