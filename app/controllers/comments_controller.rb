class CommentsController < ApplicationController
	def new
	end

	def create
	end

	def update
	end

	def destroy
	end

	private
	def comment_params
		params.require(:comments).permit()
	end
end