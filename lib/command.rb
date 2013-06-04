class Command
	def execute
		42
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


