class API

    attr_accessor :breakfast_response, :lunch_response, :dinner_response, :snack_response

    @breakfast_response = HTTParty.get('http://www.recipepuppy.com/api/?q=breakfast&format=xml')
    @lunch_response = HTTParty.get('http://www.recipepuppy.com/api/?q=lunch&format=xml')
    @dinner_response = HTTParty.get('http://www.recipepuppy.com/api/?q=dinner&format=xml')
    @snack_response = HTTParty.get('http://www.recipepuppy.com/api/?q=snack&format=xml')

    #breakfast info
    def self.get_breakfast_recipes
        data_collect = @breakfast_response.dig('recipes', 'recipe') 
        data_collect.each{|hash| Meal.new('breakfast', hash)}
    end


    #lunch info
    def self.get_lunch_recipes
        data_collect = @lunch_response.dig('recipes', 'recipe')
        data_collect.each{|hash| Meal.new('lunch', hash)}
    end


    #dinner info
    def self.get_dinner_recipes
        data_collect = @dinner_response.dig('recipes', 'recipe')
        data_collect.each{|hash| Meal.new('dinner', hash)}
    end

    #snack info
    def self.get_snack_recipes
        data_collect = @snack_response.dig('recipes', 'recipe')
        data_collect.each{|hash| Meal.new('snack', hash)}
    end


end