module SessionsHelper
  def login(user)
    session[:current_user_id] = user.id
  end
  
  def current_user
    return nil unless session[:current_user_id]
    
    User.find(session[:current_user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def logout
    session[:current_user_id] = nil 
  end
end
