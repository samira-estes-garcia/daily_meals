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

def self.choice_display(meal_selection)
    puts " "
    puts "Select a number to display ingredients and a link to the recipe.".colorize(:light_blue)
    puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the #{meal_selection} menu or".colorize(:light_blue) + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
    puts " "
end

def self.specific_meals(meal_selection)
    self.all.select{ |meal_object| meal_object.meal_type == meal_selection }
end

def self.recipe_title(meal_selection)
    puts "Breakfast Recipe Titles".colorize(:green)
    puts " "
    meals = self.specific_meals(meal_selection) 
    meals.each.with_index(1) do |meal, index| 
        puts "#{index}. #{meal.recipe_title}"
    end
    puts " "
end

def self.meal_choices(index_of_user_selection, meal_selection)

    details = self.specific_meals(meal_selection)
    input = (index_of_user_selection.to_i - 1)
    details[input]

    if input >= 12
        puts " "
        puts "That's not a valid command. Enter 1-10 to select a meal.".colorize(:red)
        puts " "
        self.recipe_title(meal_selection)
    elsif index_of_user_selection == "back"
        puts " "
        self.recipe_title(meal_selection)
    elsif index_of_user_selection == "exit"
        puts ""
    else
        puts " "
        puts "Recipe Name: ".colorize(:green) + details[input].recipe_title
        puts "Ingredients: ".colorize(:green) + details[input].ingredients
        puts "Recipe Link: ".colorize(:green) + details[input].recipe_link
        puts " "
        puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "go to the breakfast menu or".colorize(:light_blue) + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
        puts " "
    end
    
end

def self.all
    @@all
end

end