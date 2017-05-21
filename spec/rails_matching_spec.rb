require "spec_helper"

RSpec.describe RailsMatching do

  it "has a version number" do
    expect(RailsMatching::VERSION).not_to be nil
  end
 
  it "creates a user to run tests" do
  	user = create(:users)
  	expect user.not_to be nil
  end

end
