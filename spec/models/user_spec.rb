require 'rails_helper'

RSpec.describe User, type: :model do

	it "has a valid factory" do
		expect(build(:user).save).to be true
	end

	it "is invalid without a username" do
		expect(build(:user, username: nil).save).to be false
	end

	it "is invalid without unique username" do
		user = create(:user)
		expect(build(:user, username: "genericUsername").save).to be false
	end

	it "is invalid without an email" do
		expect(build(:user, email: nil).save).to be false
	end

	it "is invalid without a unique email address" do
		user = create(:user)
		expect(build(:user, email: "user@name.com").save).to be false
	end

end
