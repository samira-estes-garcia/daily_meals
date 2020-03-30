class CLI

    def start
        self.main_menu
    end

    def main_menu
        puts 'Welcome to Daily Meals!'
        puts 'Please select an option to find recipes to cook! Type "menu" to access the main menu or type "exit" to exit the program.'

        puts "1. Breakfast"
        puts "2. Lunch"
        puts "3. Dinner"
        puts "4. Snack"
        
        puts "Enter Choice Number: "

        choice = nil
        while choice != 'exit'
            choice = gets.strip
            case choice
            when "1"
                puts "Select a number to display ingredients and a link to the recipe. Type back to go back to the breakfast menu."
                self.breakfast_recipes
                self.breakfast_details
            when "2"
                puts "Select a number to display ingredients and a link to the recipe."
                self.lunch_recipes
            when "3"
                puts "Select a number to display ingredients and a link to the recipe."
                self.dinner_recipes
            when "4"
                puts "Select a number to display ingredients and a link to the recipe."
                self.snack_recipes
            when "menu"
                self.start
            end
        end 

        if choice == "exit"
            puts "Thank you for using Daily Meals. Happy Cooking!"
        end
    end

    def breakfast_recipes 
        API.get_breakfast_recipes
        API.get_breakfast_ingredients
        API.get_breakfast_urls
        puts API.all_breakfast_recipes
    end

    def breakfast_details
        breakfast_input = gets.strip
        recipes = API.all_breakfast_recipes
        ingredients = API.all_breakfast_ingredients
        recipe_url = API.all_breakfast_urls

        unless breakfast_input == 'back'
            case breakfast_input
            when "1"
                puts "Recipe Name: #{recipes[0]}"
                puts ingredients[0]
                puts recipe_url[0]
            when "2"
                puts "Recipe Name: #{recipes[1]}"
                puts ingredients[1]
                puts recipe_url[1]
            when "3"
                puts "Recipe Name: #{recipes[2]}"
                puts ingredients[2]
                puts recipe_url[2]
            when "4"
                puts "Recipe Name: #{recipes[3]}"
                puts ingredients[3]
                puts recipe_url[3]
            when "5"
                puts "Recipe Name: #{recipes[4]}"
                puts ingredients[4]
                puts recipe_url[4]
            when "6"
                puts "Recipe Name: #{recipes[5]}"
                puts ingredients[5]
                puts recipe_url[5]
            when "7"
                puts "Recipe Name: #{recipes[6]}"
                puts ingredients[6]
                puts recipe_url[6]
            when "8"
                puts "Recipe Name: #{recipes[7]}"
                puts ingredients[7]
                puts recipe_url[7]
            when "9"
                puts "Recipe Name: #{recipes[8]}"
                puts ingredients[8]
                puts recipe_url[8]
            when "10"
                puts "Recipe Name: #{recipes[9]}"
                puts ingredients[9]
                puts recipe_url[9]
            end
        end

        if breakfast_input == "back"
            puts "is working"
            #self.breakfast_recipes
        end
    end

    def lunch_recipes 
        API.get_lunch_recipes
        puts API.all_lunch_recipes
    end

    def dinner_recipes 
        API.get_dinner_recipes
        puts API.all_dinner_recipes
    end

    def snack_recipes 
        API.get_snack_recipes
        puts API.all_snack_recipes
    end

end