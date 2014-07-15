require './lib/task'

@list = []

def main_menu
	loop do
		puts "Press 'a' to add a task to 'l' to list all of your tasks."
		puts "press 'x' to exit."
		main_choice  = gets.chomp
		if main_choice == 'a'
			add_task
		elsif main_choice == 'l'
			list_tasks
		elsif main_choice == 'x'
			puts "Good-bye!"
			exit
		else
			puts "\nSorry that was not a valid option\n\n"
		end
	end
end

def add_task
	puts "Enter a description of the new task:"
	user_description = gets.chomp
	@list << Task.new(user_description)
	puts "Task added.\n\n"
	main_menu
end

def list_tasks
	puts "Here are all of your tasks"
	@list.each do |task|
		puts task.description
	end
	puts "\n\n"
end

main_menu



