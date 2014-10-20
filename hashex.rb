class FruitGame
  def fruit_color(fruits_and_colors)
    fruits_and_colors.each do |(fruit, color)|
      puts "All #{fruit.to_s}s are #{color}"
    end
  end
end

fruitgame = FruitGame.new
fruitshash = {apple: "red", banana: "yellow", orange: "orange", strawberry: "red"}
fruitgame.fruit_color(fruitshash)
