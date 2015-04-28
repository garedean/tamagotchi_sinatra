class Tamagotchi
  attr_accessor :food_level
  attr_accessor :name

  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
  end
end
