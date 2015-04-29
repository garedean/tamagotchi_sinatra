class Tamagotchi
  @@pets = []

  attr_accessor :food_level
  attr_accessor :name

  define_method(:initialize) do |name|
    @@pets << self

    @name = name
    @food_level = 10
  end

  define_method(:dead?) do
    @food_level == 0 || @food_level == 100
  end

  define_method(:hungry?) do
    @food_level < 50
  end

  define_method(:feed) do |amount = 10|
    @food_level += amount if hungry?
  end

  define_singleton_method(:get_pet) do
    @@pets.first
  end

  define_singleton_method(:reset) do
    @@pets = []
  end
end
