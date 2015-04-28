class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
  end

  define_method(:name) do
    @name
  end

  define_method(:set_name) do |new_name|
    @name = new_name
  end
end
