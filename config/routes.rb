Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/bloggers', to: 'bloggers#index', as: 'bloggers'
  get '/bloggers/new', to: 'bloggers#new', as: 'new_blogger'
  post '/bloggers', to: 'bloggers#create'
  get '/bloggers/:id', to: 'bloggers#show', as: 'blogger'
end
