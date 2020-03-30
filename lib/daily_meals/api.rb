class API

    @@all_breakfast_recipes = []
    @@all_breakfast_ingredients = []
    @@all_breakfast_urls = []

    @@all_lunch_recipes = []

    @@all_dinner_recipes = []

    @@all_snack_recipes = []

    def self.get_breakfast_recipes
        response = HTTParty.get('http://www.recipepuppy.com/api/?q=breakfast&format=xml')
        data_collect = response.dig('recipes', 'recipe')
        titles = data_collect.map{|hash| hash['title']}
        titles.each.with_index(1) do |title, index|
            @@all_breakfast_recipes << "#{index}. #{title}"
        end
    end

   def self.all_breakfast_recipes
    @@all_breakfast_recipes
   end

    def self.get_breakfast_ingredients
        response = HTTParty.get('http://www.recipepuppy.com/api/?q=breakfast&format=xml')
        data_collect = response.dig('recipes', 'recipe')  
        ingredients = data_collect.map{ |hash| hash['ingredients'] }
        ingredients.each do |ingredient|
            @@all_breakfast_ingredients << "Ingredients: #{ingredient}"
        end
    end

    def self.all_breakfast_ingredients 
     @@all_breakfast_ingredients
    end

    def self.get_breakfast_urls
        response = HTTParty.get('http://www.recipepuppy.com/api/?q=breakfast&format=xml')
        data_collect = response.dig('recipes', 'recipe')  
        ingredients = data_collect.map{ |hash| hash['href'] }
        ingredients.each do |href|
            @@all_breakfast_urls << "Recipe Link: #{href}"
        end
    end

    def self.all_breakfast_urls 
     @@all_breakfast_urls
    end

   def self.get_lunch_recipes
    response = HTTParty.get('http://www.recipepuppy.com/api/?q=lunch&format=xml')
        data_collect = response.dig('recipes', 'recipe')
        titles = data_collect.map{|hash| hash['title']}
        titles.each.with_index(1) do |title, index|
            @@all_lunch_recipes << "#{index}. #{title}"
        end
   end

   def self.all_lunch_recipes
    @@all_lunch_recipes
   end

   def self.get_dinner_recipes
    response = HTTParty.get('http://www.recipepuppy.com/api/?q=dinner&format=xml')
        data_collect = response.dig('recipes', 'recipe')
        titles = data_collect.map{|hash| hash['title']}
        titles.each.with_index(1) do |title, index|
            @@all_dinner_recipes << "#{index}. #{title}"
        end
   end

   def self.all_dinner_recipes
    @@all_dinner_recipes
   end

   def self.get_snack_recipes
    response = HTTParty.get('http://www.recipepuppy.com/api/?q=snack&format=xml')
        data_collect = response.dig('recipes', 'recipe')
        titles = data_collect.map{|hash| hash['title']}
        titles.each.with_index(1) do |title, index|
            @@all_snack_recipes << "#{index}. #{title}"
        end
   end

   def self.all_snack_recipes
    @@all_snack_recipes
   end

end