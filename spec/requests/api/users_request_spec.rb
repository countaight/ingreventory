require 'rails_helper'

RSpec.describe Api::UsersController, type: :request do

	let!(:users) { create_list(:user, 5) }
	let(:user) { users.last }

	describe "GET index" do

		before { get api_users_path }

		it "returns JSON" do
			expect(response.content_type).to eq("application/json")
		end

		it "returns all users" do
			expect(json.size).to eq(5)
		end

	end

	describe "GET show" do

		before { get "/api/users/#{user.id}" }

		it "returns JSON" do
			expect(response.content_type).to eq("application/json")
		end

		it "returns the correct user" do
			expect(json["id"]).to eq(user.id)
		end

	end

	describe "POST create" do

		it "creates a new user with valid parameters" do
			user_attributes = attributes_for :user
			expect {
				post "/api/users", params: user_attributes
			}.to change(User, :count).by(1)
		end

	end

end
