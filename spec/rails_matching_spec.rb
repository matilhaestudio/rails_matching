require "spec_helper"

RSpec.describe RailsMatching do

  context "Setup"

    it "has a version number" do
      expect(RailsMatching::VERSION).not_to be nil
    end
   
    it "creates a user to run tests" do
    	user = create(:user)
    	expect(user).to be_instance_of(User)
    end

    it "creates a list of users to run tests" do
    	users = create_list(:user, 10)
    	expect(users.count).to be(10)
    	# pp users
    end
  end

  context "Model against itself matches"

    it "Raise an error if first param is not an object" do
    end

    it "Raise and error if first params does not have an attibute"
    end

    it "runs matches" do
    	# 10.times {
    	# 	user = create(:user)	
    	# }
     #  matchs = RailsMatching.against_itself(User.all)
     #  pp User.all
    end
  end

end
