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
    end

    it "expect to users not to be the same" do
      users = create_list(:user, 10)
      expect(users.first.name).not_to be(users.last.name)
    end

  context "run model against itself matches"

    it "Raise an error if first param is not an object" do
    end

    it "Raise and error if first params does not have an attibute" do
    end

    it "Raise and error if first params does not have an id" do
    end

    it "runs matches" do
      users = create_list(:user, 10)
      matchs = RailsMatching.against_itself(User.all)
      expect(matchs.lenght).not_to be(0)
    end

end
