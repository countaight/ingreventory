require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do

	before(:each) do
		request.accept = 'application/json' if defined? request
	end

	describe "GET index" do

		it "assigns @users" do
			user = create(:user)
			get :index
			expect(assigns(:users)).to eq([user])
		end

		it "returns JSON" do
			user = create(:user)
			get :index
			expect(response.content_type).to eq("application/json")
		end

	end

	describe "GET show" do

		it "assigns @user" do
			user = create(:user)
			get :show, params: { id: user.id }
			expect(assigns(:user)).to eq(user)
		end

		it "returns JSON" do
			user = create(:user)
			get :show, params: { id: user.id }
			expect(response.content_type).to eq("application/json")
		end

	end

end
