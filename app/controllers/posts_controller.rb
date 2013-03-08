class PostsController < ApplicationController

	def index
		@posts = Post.includes(:comments).all
	end	

	def new
		@posts = Post.new
	end	

	def create
		@posts = Post.new(params[:post])
		if @posts.save
			redirect_to posts_path
		else
			render :new
		end		
	end	

end
