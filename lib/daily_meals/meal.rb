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

def self.recipe_title(api_hash)
    titles = api_hash.collect { |element| element['title'] }
    title_array = []
    titles.each.with_index(1) {|title, index| title_array << "#{index}. #{title}" }
    title_array
end

def self.recipe_ingredients(api_hash)
    ingredients = api_hash.collect { |element| element['ingredients'] }
end

def self.recipe_urls(api_hash)
    recipe_urls = api_hash.collect { |element| element['href'] }
end

def self.all
    @@all
end

end