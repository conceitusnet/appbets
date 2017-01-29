class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Ativar conta"
  end

  def password_reset
    @greeting = "Oi"

    mail to: "to@example.org"
  end
end
