class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def new
    @new_post = Post.new
  end

  def create
    post = Post.create :content => params[:post][:content], :user_id => params[:post][:user_id]
    
    if post.valid?
      flash[:success] = ["Post created successfully"]
    else
      flash[:error] = post.errors.full_messages
    end
    
    flash.keep
    
    redirect_to :action => :index
  end

end
