class Tamagotchi
  attr_accessor :food_level
  attr_accessor :name

  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
  end

  define_method(:dead?) do
    @food_level == 0 || @food_level == 100
  end
end
