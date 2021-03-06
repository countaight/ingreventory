class Api::UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		@user = User.create(user_params)

		if @user.save
			render json: @user, status: :created
		else
			render json: @user.errors, status: :bad
		end
	end

	private

	def user_params
		params.permit(
			:username,
			:email,
			:password,
			:password_confirmation
		)
	end

end
