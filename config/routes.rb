Rails.application.routes.draw do

  root    'static_pages#home'
  get     '/ajuda',     to: 'static_pages#ajuda'
  get     '/regras',    to: 'static_pages#regras'
  get     '/contatos',  to: 'static_pages#contatos'
  get     '/cadastro',  to: 'users#new'
  post    '/cadastro',  to: 'users#create'
  get     '/login',     to: 'sessions#new'
  post    '/login',     to: 'sessions#create'
  delete  '/logout',    to: 'sessions#destroy'
  resources :users

end
