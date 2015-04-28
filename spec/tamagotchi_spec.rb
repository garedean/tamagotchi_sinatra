require('rspec')
require('tamagotchi')

describe('Tamagotchi') do
  describe('#name') do
    it('returns the name string') do
      expect(Tamagotchi.new('Bob').name).to(eq('Bob'))
    end
  end

  describe('#set_name') do
    it('sets a name for the tamagotchi') do
      expect(Tamagotchi.new('Bob').set_name('Bill')).to(eq('Bill'))
    end
  end
end
