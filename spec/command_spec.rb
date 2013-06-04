require "command.rb"

describe CommandUser do

	before(:each) do
		@command = Command.new("the answer")
		@user = CommandUser.new(@command)
	end

	it "should initialize with a command" do
		@user.command.should == @command
	end

	it "should respond to on call" do
		@user.should respond_to(:on_call)
	end

	describe "on call" do
		it "should call the commands execute" do
			@command.should_receive(:execute)
			@user.on_call
		end
	end
end

describe Command do

	before(:each) do
		@command = Command.new("the answer")
	end

	it "should respond to execute" do
		@command.should respond_to(:execute)
	end

	it "should respond to description" do
		@command.should respond_to(:description)
	end

	describe "execute" do
		it "should return the answer to life, the universe and everything" do
			@command.execute.should == 42
		end
	end

	describe "describe" do
		it "should return the commands description" do
			@command.description.should == "the answer"
		end
	end
end
