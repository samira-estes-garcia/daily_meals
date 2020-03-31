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

end