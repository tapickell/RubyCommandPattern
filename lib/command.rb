class Command
	attr_reader :description
	
	def initialize(description)
		@description = description
	end

	def execute
		42
	end

	def description
		@description
	end
end

class CommandUser
	attr_accessor :command

	def initialize(command)
		@command = command
	end

	def on_call
		@command.execute
	end
end


