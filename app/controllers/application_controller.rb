class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def ola
    render html: "Olá! Mundo Rails"
  end
end
