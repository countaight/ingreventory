require 'rails_helper'

RSpec.describe User, type: :model do

	it "has a valid factory" do
		expect(build(:user).save).to be true
	end

	it "is invalid without a name" do
		expect(build(:user, username: nil).save).to be false
	end

	it "is invalid without unique username" do
		user = create(:user)
		expect(build(:user, username: "genericUsername").save).to be false
	end

end
