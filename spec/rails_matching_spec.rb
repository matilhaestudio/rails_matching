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
    expect{ RailsMatching.against_itself(1) }.to raise_error(NoMethodError)
  end

  it "Raise and error if first params does not have an attibute" do
    expect{ RailsMatching.against_itself(["1","2"]) }.to raise_error(NoMethodError)
  end

  it "Raise and error if first params does not have an id" do
  end

  it "runs matches" do
    matchs = RailsMatching.against_itself(User)
    expect(matchs.length).not_to be(0)
  end

  context "run instance against all instances of a model"

  it "run matches" do
    user = User.create(name: "Test", age: 22, job_title: "writer")
    matchs = RailsMatching.instance_against_all(user, User)
    expect(matchs.length).not_to be(0)
  end

  it "run matches with excluded attributes" do
    user = User.create(name: "Test", age: 22, job_title: "writer")
    matchs = RailsMatching.instance_against_all(user, User, exclude_attrs: ["name"])
    expect(matchs.length).not_to be(0)
  end

  it "run matches with required fields" do
    user = User.create(name: "Test", age: 22, job_title: "writer")
    matchs = RailsMatching.instance_against_all(user, User, required_match_fields: ["age"])
    expect(matchs.length).not_to be(0)
  end

end
