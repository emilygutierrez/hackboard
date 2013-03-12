class PostsController < ApplicationController

	def index
		@posts = Post.includes(:comments)
		if params[:user_id]
			@posts = Post.where(user_id: params[:user_id])
		else
			@posts = Post
		end		
	end	

	def new
		@posts = Post.new
	end	

	def create
		@posts = Post.new(params[:post])
		if @posts.valid?
			@posts.save
			redirect_to posts_path
		else
			render :new
		end		
	end	

end
