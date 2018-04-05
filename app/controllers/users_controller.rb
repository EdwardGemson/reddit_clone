class UsersController < ApplicationController
		def new
	end

	def create
	end

	def update
	end

	def destroy
		redirect_to r_all_path
	end

	def sign_out
		redirect_to r_all_path

	end

	private
	def user_params
		params.require(:users).permit()
	end
end