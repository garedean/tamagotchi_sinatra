class Tamagotchi
  @@pets = []

  attr_accessor :food_level
  attr_accessor :name
  attr_accessor :messages

  define_method(:initialize) do |name|
    @@pets << self

    @name = name
    @food_level = 10
    @messages = []

    write_message("A baby Tamagotchi is born. Its name is '#{name}'.")
  end

  define_method(:dead?) do
    @food_level == 0 || @food_level == 100
  end

  define_method(:hungry?) do
    @food_level < 50
  end

  define_method(:feed) do |amount = 10|
    if hungry?
      @food_level += amount if hungry?
      write_message("You feed #{@name} #{amount} food.")
      @food_level
    else
      if messages.last == "#{@name} isn't hungry right now."
        write_message("Seriously. #{@name} doesn't want to eat")
      else
        write_message("#{@name} isn't hungry right now.")
      end
    end
  end

  define_singleton_method(:get_pet) do
    @@pets.first
  end

  define_singleton_method(:reset) do
    @@pets = []
  end

  define_method(:write_message) do |content|
    @messages << content
  end
end
