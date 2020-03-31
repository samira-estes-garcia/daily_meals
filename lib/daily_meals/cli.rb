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
                API.choice_display("breakfast")
                self.breakfast_recipes
            when "2"
                API.choice_display("lunch")
                self.lunch_recipes
            when "3"
                API.choice_display("dinner")
                self.dinner_recipes
            when "4"
                API.choice_display("snack")
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
                API.breakfast_choices(0)
            when "2"
                API.breakfast_choices(1)
            when "3"
                API.breakfast_choices(2)
            when "4"
                API.breakfast_choices(3)
            when "5"
                API.breakfast_choices(4)
            when "6"
                API.breakfast_choices(5)
            when "7"
                API.breakfast_choices(6)
            when "8"
                API.breakfast_choices(7)
            when "9"
                API.breakfast_choices(8)
            when "10"
                API.breakfast_choices(9)
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
                API.lunch_choices(0)
            when "2"
                API.lunch_choices(1)
            when "3"
                API.lunch_choices(2)
            when "4"
                API.lunch_choices(3)
            when "5"
                API.lunch_choices(4)
            when "6"
                API.lunch_choices(5)
            when "7"
                API.lunch_choices(6)
            when "8"
                API.lunch_choices(7)
            when "9"
                API.lunch_choices(8)
            when "10"
                API.lunch_choices(9)
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
                API.dinner_choices(0)
            when "2"
                API.dinner_choices(1)
            when "3"
                API.dinner_choices(2)
            when "4"
                API.dinner_choices(3)
            when "5"
                API.dinner_choices(4)
            when "6"
                API.dinner_choices(5)
            when "7"
                API.dinner_choices(6)
            when "8"
                API.dinner_choices(7)
            when "9"
                API.dinner_choices(8)
            when "10"
                API.dinner_choices(9)
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
                API.snack_choices(0)
            when "2"
                API.snack_choices(1)
            when "3"
                API.snack_choices(2)
            when "4"
                API.snack_choices(3)
            when "5"
                API.snack_choices(4)
            when "6"
                API.snack_choices(5)
            when "7"
                API.snack_choices(6)
            when "8"
                API.snack_choices(7)
            when "9"
                API.snack_choices(8)
            when "10"
                API.snack_choices(9)
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