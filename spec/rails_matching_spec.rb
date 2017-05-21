require "spec_helper"

RSpec.describe RailsMatching do

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

  it "runs matches" do
  	# 10.times {
  	# 	user = create(:user)	
  	# }
   #  matchs = RailsMatching.against_itself(User.all)
   #  pp User.all
  end
end
