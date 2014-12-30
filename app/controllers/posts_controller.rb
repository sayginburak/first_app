class PostsController < ApplicationController
	def index
		@posts=Post.all

	end

	def new
		@post=Post.new
	end

	def create
		@post=Post.new(strong_params)
		@post.save
		redirect_to root_path
	end

	private 
	def strong_params
		params.require(:post).permit(:title,:content)
	end
end
