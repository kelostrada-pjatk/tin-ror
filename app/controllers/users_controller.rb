class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def create
    
    if User.where("name = ? OR email = ?", params[:user][:name], params[:user][:email]).size > 0
      
      flash[:error] = ["User already exists"]
      
    else
      
      user = User.create :name => params[:user][:name], :email => params[:user][:email]
    
      if !user.valid?
        flash[:error] = user.errors.full_messages
      else
        flash[:success] = ["User created successfully"]
      end

    end
    
    flash.keep
    
    redirect_to :action => :index
  end

  def new
    @new_user = User.new
  end
end
