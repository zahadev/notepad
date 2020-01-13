require 'date'
class Task < Post

	def initialize
		super
		@due_date = Time.now
		
	end

	def read_from_console
		puts "Что на сделать?"
		@text = STDIN.gets.chomp

		puts "Дедлайн задачи: (укажите в формате ДД.ММ.ГГГГ, например 11.07.2003)"
		input = STDIN.gets.chomp

		@due_date = Date.parse(input)
	end

	def to_strings
		time_string = "Создано: #{@craeted_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
		deadline = "Крайный срок: #{@due_date.strftime('%Y.%m.%d')}"

		return [deadline, @text, time_string]
		
	end
	
end