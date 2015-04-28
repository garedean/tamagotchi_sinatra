require('rspec')
require('tamagotchi')

describe('Tamagotchi') do
  describe('#name') do
    it('returns the name string') do
      expect(Tamagotchi.new('Bob').name).to(eq('Bob'))
    end
  end
end
