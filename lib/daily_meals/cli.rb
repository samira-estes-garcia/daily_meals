class CLI

    def start
        self.main_menu
    end

    def main_menu
        puts 'Welcome to Daily Meals!'
        puts 'Please select an option to find recipes to cook! Or type exit to exit the program.'

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
                puts "Select a number to display ingredients and a link to the recipe."
                self.breakfast_recipes
            when "2"
                puts "Select a number to display ingredients and a link to the recipe."
                self.lunch_recipes
            when "3"
                puts "Select a number to display ingredients and a link to the recipe."
                self.dinner_recipes
            when "4"
                puts "Select a number to display ingredients and a link to the recipe."
                self.snack_recipes
            end
        end 

        # if choice = '5'
        #     puts "Please enter a number between 1 and 4, or type exit to exit the program."
        # end

        if choice == "exit"
            puts "Thank you for using Daily Meals. Happy Cooking!"
        end
    end

    def breakfast_recipes 
        API.get_breakfast_recipes
        puts API.all_breakfast_recipes
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