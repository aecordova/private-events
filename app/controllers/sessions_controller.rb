class SessionsController < ApplicationController
  def new;  end
  
  def create
    if @user = User.find_by(email: params[:email])
      login @user
      redirect_to @user
    else
      render 'new'
    end
  end
end

