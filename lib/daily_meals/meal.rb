class Meal

attr_accessor :meal_type, :recipe_title, :ingredients, :recipe_link

@@all = []

def initialize(meal_type, api_hash)
    @meal_type = meal_type
    @recipe_title = api_hash['title']
    @ingredients = api_hash['ingredients']
    @recipe_link = api_hash['href']
    @@all << self
end

def self.specific_meals(meal_selection)
    self.all.select{ |meal_object| meal_object.meal_type == meal_selection }
end

def self.meal_detail_display(meal_obj)
   
    puts " "
    puts "Recipe Name: ".colorize(:green) + meal_obj.recipe_title
    puts "Ingredients: ".colorize(:green) + meal_obj.ingredients
    puts "Recipe Link: ".colorize(:green) + meal_obj.recipe_link
    puts " "
    puts " "

end

def self.all
    @@all
end

end