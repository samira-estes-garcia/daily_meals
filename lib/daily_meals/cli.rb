class CLI

    def start
        self.main_menu
    end

    def main_menu
        puts " "
        puts "********************************************************************************"
        puts " "
        puts 'Welcome to Daily Meals!'.center(85).colorize(:light_blue)
        puts " "
        puts "********************************************************************************"
        puts " "
        puts 'Please select an option to find recipes to cook!'.colorize(:light_blue)
        puts "Type".colorize(:light_blue) + " menu ".colorize(:red) + "to access the main menu or".colorize(:light_blue) + " exit ".colorize(:red) + "to exit the program.".colorize(:light_blue)
        puts " "
        API.get_breakfast_recipes
        API.get_lunch_recipes
        API.get_dinner_recipes
        API.get_snack_recipes
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
                Meal.choice_display("breakfast")
                self.breakfast_recipes
            when "2"
                Meal.choice_display("lunch")
                self.lunch_recipes
            when "3"
                Meal.choice_display("dinner")
                self.dinner_recipes
            when "4"
                Meal.choice_display("snack")
                self.snack_recipes
            when "menu"
                self.start
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

    #breakfast
    def breakfast_recipes 
        puts "Breakfast Recipe Titles".colorize(:green)
        puts " "
        @meals = Meal.specific_meals("breakfast")
        @meals.each.with_index(1) do |meal, index| 
              puts "#{index}. #{meal.recipe_title}"
        end
        puts " "
        self.breakfast_details
    end

    def breakfast_details
        breakfast_input = nil
        while breakfast_input != "back" && breakfast_input != "exit"
            breakfast_input = gets.strip
            Meal.meal_choices(breakfast_input, "breakfast")
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
        puts "Lunch Recipe Titles".colorize(:green)
        puts " "
        @meals = Meal.specific_meals("lunch") 
        @meals.each.with_index(1) do |meal, index| 
              puts "#{index}. #{meal.recipe_title}"
        end
        puts " " 
        self.lunch_details
    end

    def lunch_details
        lunch_input = nil
        while lunch_input != "back" && lunch_input != "exit"
            lunch_input = gets.strip
            Meal.meal_choices(lunch_input, "lunch")
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
        puts "Dinner Recipe Titles".colorize(:green)
        puts " "
        @meals = Meal.specific_meals("dinner") 
        @meals.each.with_index(1) do |meal, index| 
              puts "#{index}. #{meal.recipe_title}"
        end
        puts " "
        self.dinner_details 
    end

    def dinner_details
       dinner_input = nil
        while dinner_input != "back" && dinner_input != "exit"
            dinner_input = gets.strip
            Meal.meal_choices(dinner_input, "dinner")
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
        puts "Snack Recipe Titles".colorize(:green)
        puts " "
        @meals = Meal.specific_meals("snack") 
        @meals.each.with_index(1) do |meal, index| 
              puts "#{index}. #{meal.recipe_title}"
        end
        puts " "
        self.snack_details 
    end

    def snack_details
        snack_input = nil
        while snack_input != "back" && snack_input != "exit"
            snack_input = gets.strip
            Meal.meal_choices(snack_input, "snack")
        end

        if snack_input == "back" 
            puts " "
            self.snack_recipes
        else snack_input == "exit"
            self.start
        end

    end

end