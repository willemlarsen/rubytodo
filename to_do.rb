require './lib/task'

@list = []

@choices = {
			"a" => lambda {add_task},
		   	"l" => lambda {list_tasks},
		   	"x" => lambda {goodbye},
		   }

@choices.default = lambda {apology}

def main_menu
	loop do
		puts "Press 'a' to add a task to 'l' to list all of your tasks."
		puts "press 'x' to exit."
		main_choice  = gets.chomp
		@choices[main_choice].call
	end
end

def apology
	puts "\nSorry that was not a valid option\n\n"
end

def goodbye
	puts "Good-bye!"
	exit
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



