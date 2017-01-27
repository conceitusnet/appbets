module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Retorna o usuário conecatado
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Retorna true se o usuário estiver logado, false caso contrário
  def logged_in?
    !current_user.nil?
  end

  # Desconecta o usuário atual
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
