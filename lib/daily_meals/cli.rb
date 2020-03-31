class CLI

    def start
        self.main_menu
    end

    def main_menu
        puts " "
        puts "********************************************************************************"
        puts " "
        puts 'Welcome to Daily Meals!'.center(85).colorize(:light_blue)
        puts "********************************************************************************"
        puts " "
        puts 'Please select an option to find recipes to cook!'.colorize(:light_blue)
        puts "Type".colorize(:light_blue) + " menu ".colorize(:red) + "to access the main menu or".colorize(:light_blue) + " exit ".colorize(:red) + "to exit the program.".colorize(:light_blue)
        puts " "

        puts "1. Breakfast"
        puts "2. Lunch"
        puts "3. Dinner"
        puts "4. Snack"
        
        puts " "
        puts "Enter Choice Number: ".colorize(:light_blue)
        puts " "

        choice = nil
        while choice != 'exit'
            choice = gets.strip
            case choice
            when "1"
                puts " "
                puts "Select a number to display ingredients and a link to the recipe.".colorize(:light_blue)
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
                self.breakfast_recipes
            when "2"
                puts " "
                puts "Select a number to display ingredients and a link to the recipe.".colorize(:light_blue)
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or".colorize(:light_blue) + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
                self.lunch_recipes
            when "3"
                puts " "
                puts "Select a number to display ingredients and a link to the recipe.".colorize(:light_blue)
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or".colorize(:light_blue) + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
                self.dinner_recipes
            when "4"
                puts " "
                puts "Select a number to display ingredients and a link to the recipe.".colorize(:light_blue)
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to go back to the snack menu or".colorize(:light_blue) + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
                self.snack_recipes
            when "menu"
                self.start
            end
        end 

        if choice == "exit"
            puts " "
            puts "Thank you for using Daily Meals. Happy Cooking!".colorize(:light_blue)
            puts " "
        end
    end

    #breakfast
    def breakfast_recipes 
        API.get_breakfast_recipes
        puts "Breakfast Recipe Titles".colorize(:green)
        puts " "
        puts API.get_breakfast_titles
        puts " "
        self.breakfast_details
    end

    def breakfast_details
        recipes = API.get_breakfast_titles
        ingredients = API.get_breakfast_ingredients
        recipe_url = API.get_breakfast_urls

        breakfast_input = nil
        while breakfast_input != "back" && breakfast_input != "exit"
            breakfast_input = gets.strip
            case breakfast_input
            when "1"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[0][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[0]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[0]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "2"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[1][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[1]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[1]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "3"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[2][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[2]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[2]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "4"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[3][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[3]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[3]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "5"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[4][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[4]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[4]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "6"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[5][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[5]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[5]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "7"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[6][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[6]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[6]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "8"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[7][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[7]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[7]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "9"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[8][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[8]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[8]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "10"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[9][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[9]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[9]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the breakfast menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            end
        end

        if breakfast_input == "back" 
            puts " "
            self.breakfast_recipes
        else breakfast_input == "exit"
            self.start
        end

    end

    #lunch
    def lunch_recipes 
        API.get_lunch_recipes
        puts "Lunch Recipe Titles".colorize(:green)
        puts " "
        puts API.get_lunch_titles
        puts " " 
        self.lunch_details
    end

    def lunch_details
        recipes = API.get_lunch_titles
        ingredients = API.get_lunch_ingredients
        recipe_url = API.get_lunch_urls

        lunch_input = nil
        while lunch_input != "back" && lunch_input != "exit"
            lunch_input = gets.strip
            case lunch_input
            when "1"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[0][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[0]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[0]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "2"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[1][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[1]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[1]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "3"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[2][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[2]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[2]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "4"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[3][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[3]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[3]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "5"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[4][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[4]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[4]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "6"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[5][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[5]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[5]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "7"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[6][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[6]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[6]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "8"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[7][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[7]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[7]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "9"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[8][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[8]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[8]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "10"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[9][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[9]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[9]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the lunch menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            end
        end

        if lunch_input == "back"
            puts " " 
            self.lunch_recipes
        else lunch_input == "exit"
            self.start
        end

    end

    #dinner
    def dinner_recipes 
        API.get_dinner_recipes
        puts "Dinner Recipe Titles".colorize(:green)
        puts " "
        puts API.get_dinner_titles
        puts " "
        self.dinner_details 
    end

    def dinner_details
        recipes = API.get_dinner_titles
        ingredients = API.get_dinner_ingredients
        recipe_url = API.get_dinner_urls

        dinner_input = nil
        while dinner_input != "back" && dinner_input != "exit"
            dinner_input = gets.strip
            case dinner_input
            when "1"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[0][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[0]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[0]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "2"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[1][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[1]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[1]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "3"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[2][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[2]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[2]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "4"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[3][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[3]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[3]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "5"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[4][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[4]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[4]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "6"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[5][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[5]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[5]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "7"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[6][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[6]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[6]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "8"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[7][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[7]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[7]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "9"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[8][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[8]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[8]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "10"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[9][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[9]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[9]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the dinner menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            end
        end

        if dinner_input == "back" 
            puts " "
            self.dinner_recipes
        else dinner_input == "exit"
            self.start
        end

    end

    #snack
    def snack_recipes 
        API.get_snack_recipes
        puts "Snack Recipe Titles".colorize(:green)
        puts " "
        puts API.get_snack_titles
        puts " "
        self.snack_details 
    end

    def snack_details
        recipes = API.get_snack_titles
        ingredients = API.get_snack_ingredients
        recipe_url = API.get_snack_urls

        snack_input = nil
        while snack_input != "back" && snack_input != "exit"
            snack_input = gets.strip
            case snack_input
            when "1"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[0][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[0]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[0]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "2"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[1][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[1]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[1]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "3"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[2][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[2]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[2]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "4"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[3][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[3]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[3]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "5"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[4][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[4]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[4]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "6"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[5][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[5]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[5]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "7"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[6][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[6]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[6]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "8"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[7][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[7]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[7]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "9"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[8][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[8]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[8]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            when "10"
                puts " "
                puts "Recipe Name:".colorize(:green) + " #{recipes[9][3..-1]}"
                puts "Ingredients:".colorize(:green) + " #{ingredients[9]}"
                puts "Recipe Link:".colorize(:green) + " #{recipe_url[9]}"
                puts " "
                puts "Type".colorize(:light_blue) + " back ".colorize(:red) + "to to the snack menu or" + " exit ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
                puts " "
            end
        end

        if snack_input == "back" 
            puts " "
            self.snack_recipes
        else snack_input == "exit"
            self.start
        end

    end

end