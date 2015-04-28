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

  describe('#feed') do
    it('feeds') do
      expect(Tamagotchi.new('aa').feed).to(eq(20))
    end
  end

  describe('#dead?') do
    it('returns dead if the food level is 0 or 100') do
      critter = Tamagotchi.new('b')
      critter.food_level = 0
      expect(critter.dead?).to(eq(true))
    end
  end

  describe('#hungry?') do
    it('indicates whether critter is hungry') do
      critter = Tamagotchi.new('c')
      expect(critter.hungry?).to(eq(true))
    end
  end


end
