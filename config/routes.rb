Rails.application.routes.draw do

  root 'static_pages#home'
  get 'static_pages/ajuda'
  get 'static_pages/regras'

end
