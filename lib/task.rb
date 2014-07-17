class Task
	@@all_tasks = []
	def initialize(description)
		@description = description
	end
	def description
		@description
	end
	def Task.all
		@@all_tasks
	end
	def Task.create(description)
		new_task = Task.new(description)
		new_task.save
		new_task
	end

	def save
		@@all_tasks << self
	end
	def Task.clear
		@@all_tasks = []
	end
end
