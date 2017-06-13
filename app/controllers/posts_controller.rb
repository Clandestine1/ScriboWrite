class PostsController < ApplicationController

def index  
   @posts = Post.all
end 
#index action/route
def new  
  @post = Post.new
end  
#new action/route

def create  
  @post = Post.create(post_params)
  redirect_to posts_path
end 
#create action/route
private

def post_params  
  params.require(:post).permit(:image, :caption)
end   
end
