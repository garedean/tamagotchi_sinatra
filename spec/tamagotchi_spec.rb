require('rspec')
require('tamagotchi')

describe('Tamagotchi') do
  describe('#name') do
    # get name
    it('returns the name string') do
      expect(Tamagotchi.new('Bob').name).to(eq('Bob'))
    end

    # set name
    it('sets a name for the tamagotchi') do
      expect(Tamagotchi.new('Bob').name = 'Bill').to(eq('Bill'))
    end
  end

  describe('#food_level') do
    it('checks the food level') do
      expect(Tamagotchi.new('a').food_level).to(eq(10))
    end

    it('sets the food level') do
      expect(Tamagotchi.new('a').food_level = 5).to(eq(5))
    end
  end
end
