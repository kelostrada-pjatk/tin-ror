class PostsController < ApplicationController
  
  def show
    @posts = Post.all
  end
  
  def new
  end

  def create
  end

end
