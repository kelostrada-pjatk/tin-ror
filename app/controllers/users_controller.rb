class UsersController < ApplicationController
  
  def show
    @users = User.all
  end

  def create
    user = User.create :name => params[:user][:name], :email => params[:user][:email]
    
    if !user.valid?
      flash[:error] = user.errors.full_messages.join("<br>").html_safe
      flash.keep
    else
      flash[:success] = true
    end
    
    redirect_to :action => :show
  end

  def new
    @new_user = User.new
  end
end
