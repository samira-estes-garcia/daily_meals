class API

    attr_accessor :breakfast_response, :lunch_response, :dinner_response, :snack_response

    @breakfast_response = HTTParty.get('http://www.recipepuppy.com/api/?q=breakfast&format=xml')
    @lunch_response = HTTParty.get('http://www.recipepuppy.com/api/?q=lunch&format=xml')
    @dinner_response = HTTParty.get('http://www.recipepuppy.com/api/?q=dinner&format=xml')
    @snack_response = HTTParty.get('http://www.recipepuppy.com/api/?q=snack&format=xml')

    @@all_breakfast_recipes = []
    @@all_lunch_recipes = []
    @@all_dinner_recipes = []
    @@all_snack_recipes = []

    def self.choice_display(meal_type)
        puts " "
        puts "Select a number to display ingredients and a link to the recipe.".colorize(:light_blue)
        puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the #{meal_type} menu or".colorize(:light_blue) + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
        puts " "
    end

    #breakfast info
    def self.get_breakfast_recipes
        data_collect = @breakfast_response.dig('recipes', 'recipe')
        @@all_breakfast_recipes = data_collect.each{|hash| Meal.new('breakfast', hash)}
    end

    def self.all_breakfast_recipes
        @@all_breakfast_recipes
    end

    def self.get_breakfast_titles
        Meal.recipe_title(@@all_breakfast_recipes)
    end

    def self.get_breakfast_ingredients
        Meal.recipe_ingredients(@@all_breakfast_recipes)
    end

    def self.get_breakfast_urls
        Meal.recipe_urls(@@all_breakfast_recipes)
    end

    def self.breakfast_choices(case_number)
        details = @@all_breakfast_recipes[case_number]
        
        puts " "
        puts "Recipe Name: ".colorize(:green) + details['title']
        puts "Ingredients: ".colorize(:green) + details['ingredients']
        puts "Recipe Link: ".colorize(:green) + details['href']
        puts " "
        puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "go to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
        puts " "
    end

    #lunch info
    def self.get_lunch_recipes
        data_collect = @lunch_response.dig('recipes', 'recipe')
        @@all_lunch_recipes = data_collect.each{|hash| Meal.new('lunch', hash)}
    end

    def self.all_lunch_recipes
        @@all_lunch_recipes
    end

    def self.get_lunch_titles
        Meal.recipe_title(@@all_lunch_recipes)
    end

    def self.get_lunch_ingredients
        Meal.recipe_ingredients(@@all_lunch_recipes)
    end

    def self.get_lunch_urls
        Meal.recipe_urls(@@all_lunch_recipes)
    end

    def self.lunch_choices(case_number)
        details = @@all_lunch_recipes[case_number]
        
        puts " "
        puts "Recipe Name: ".colorize(:green) + details['title']
        puts "Ingredients: ".colorize(:green) + details['ingredients']
        puts "Recipe Link: ".colorize(:green) + details['href']
        puts " "
        puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "go to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
        puts " "
    end

    #dinner info
    def self.get_dinner_recipes
        data_collect = @dinner_response.dig('recipes', 'recipe')
        @@all_dinner_recipes = data_collect.each{|hash| Meal.new('dinner', hash)}
    end

    def self.all_dinner_recipes
        @@all_dinner_recipes
    end

    def self.get_dinner_titles
        Meal.recipe_title(@@all_dinner_recipes)
    end

    def self.get_dinner_ingredients
        Meal.recipe_ingredients(@@all_dinner_recipes)
    end

    def self.get_dinner_urls
        Meal.recipe_urls(@@all_dinner_recipes)
    end

    def self.dinner_choices(case_number)
        details = @@all_dinner_recipes[case_number]
        
        puts " "
        puts "Recipe Name: ".colorize(:green) + details['title']
        puts "Ingredients: ".colorize(:green) + details['ingredients']
        puts "Recipe Link: ".colorize(:green) + details['href']
        puts " "
        puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "go to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
        puts " "
    end

    #snack info
    def self.get_snack_recipes
        data_collect = @snack_response.dig('recipes', 'recipe')
        @@all_snack_recipes = data_collect.each{|hash| Meal.new('snack', hash)}
    end

    def self.all_snack_recipes
        @@all_snack_recipes
    end

    def self.get_snack_titles
        Meal.recipe_title(@@all_snack_recipes)
    end

    def self.get_snack_ingredients
        Meal.recipe_ingredients(@@all_snack_recipes)
    end

    def self.get_snack_urls
        Meal.recipe_urls(@@all_snack_recipes)
    end

    def self.snack_choices(case_number)
        details = @@all_snack_recipes[case_number]
        
        puts " "
        puts "Recipe Name: ".colorize(:green) + details['title']
        puts "Ingredients: ".colorize(:green) + details['ingredients']
        puts "Recipe Link: ".colorize(:green) + details['href']
        puts " "
        puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "go to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
        puts " "
    end

end