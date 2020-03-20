module SessionsHelper
  def login(user)
    session[:current_user_id] = user.id
  end
end
