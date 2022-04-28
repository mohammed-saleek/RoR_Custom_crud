class PostsController < ApplicationController
	def display_posts
		@posts = Post.all.order('created_at DESC')
	end

	def new_post
		@post = Post.new
	end

	def create_post
		@post = Post.new(post_params)
		if @post.save
			redirect_to  posts_path
		else
			render 'new_post'
		end
	end

	def show_post
		@post = Post.find(params[:id])
	end

	def edit_post
		@post = Post.find(params[:id])
	end

	def update_post
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to posts_path
		else
			render 'edit_post'
		end
	end

	def delete_post
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end
	private
	def post_params
		params.require(:post).permit(:title, :description)
	end


end
