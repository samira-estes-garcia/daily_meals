class CLI

    def start
        puts " "
        puts 'Getting Data...'.colorize(:red)
        API.get_breakfast_recipes
        API.get_lunch_recipes
        API.get_dinner_recipes
        API.get_snack_recipes
        self.main_menu
    end

    def main_menu
        self.intro_display

        choice = nil
        while choice != 'exit'
            choice = gets.strip
            case choice
            when "1"
                self.choice_display
                self.list_recipes("breakfast")
            when "2"
                self.choice_display
                self.list_recipes("lunch")
            when "3"
                self.choice_display
                self.list_recipes("dinner")
            when "4"
                self.choice_display
                self.list_recipes("snack")
            when "menu"
                self.main_menu
            when "meal"
                self.list_recipes(@user_selected_meal_object.meal_type)
            when "exit"
                puts " "
                puts "Thank you for using Daily Meals. Happy Cooking!".colorize(:light_blue)
                puts " "
                exit
            else
                puts " "
                puts "That's not a valid command. Enter 1-4 to select a meal type.".colorize(:red)
                puts " "
            end
        end 

    end

    def list_recipes(eating_time) 
        puts "#{eating_time.capitalize} Recipe Titles".colorize(:green)
        puts " "
        @meals = Meal.specific_meals(eating_time)
        @meals.each.with_index(1) do |meal, index| 
              puts "#{index}. #{meal.recipe_title}"
        end
        puts " "
        self.eating_time_details
    end

    def eating_time_details
        input = nil
            input = gets.strip
            if input.to_i >= 11
                puts " "
                puts "That's not a valid command. Enter 1-10 to select a meal.".colorize(:red)
                puts " "
            elsif input == "menu"
                self.main_menu
            else
                index = (input.to_i - 1)
                @user_selected_meal_object = @meals[index]
                Meal.meal_detail_display(@meals[index])
                puts "Type".colorize(:light_blue) + " 'menu' ".colorize(:red) + "to select a different meal category. Type".colorize(:light_blue) + " 'meal' ".colorize(:red) + "to view another recipe.".colorize(:light_blue)
                puts " "
                @meals = nil
            end
    end

    def intro_display
        puts " "
        puts "********************************************************************************"
        puts " "
        puts 'Welcome to Daily Meals!'.center(85).colorize(:light_blue)
        puts " "
        puts "********************************************************************************"
        puts " "
        puts 'Please select an option to find recipes to cook!'.colorize(:light_blue)
        puts "Type".colorize(:light_blue) + " 'menu' ".colorize(:red) + "to access the main menu or".colorize(:light_blue) + " 'exit' ".colorize(:red) + "to exit the program.".colorize(:light_blue)
        puts " "
        puts "1. Breakfast"
        puts "2. Lunch"
        puts "3. Dinner"
        puts "4. Snack"
        puts " "
        puts "Enter Choice Number: ".colorize(:light_blue)
        puts " "
    end

    def choice_display
        puts " "
        puts "Select a number to display ingredients and a link to the recipe.".colorize(:light_blue)
        puts "Type".colorize(:light_blue) + " 'menu' ".colorize(:red) + "to access the main menu.".colorize(:light_blue)
        puts " "
    end

end