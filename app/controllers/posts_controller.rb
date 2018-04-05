class PostsController < ApplicationController
	def new
		@post = Post.new()
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			binding.pry
		else
			flash[:notice] = "please try again"
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def update
	end

	def destroy
	end

	private
	def post_params
		params.require(:post).permit(:title, :content, :user_id)
	end
end