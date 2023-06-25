Rails.application.routes.draw do
  get '/documentary_films', to: redirect('/documentary_films/index')
  get 'documentary_films/index'
  post 'documentary_films/create'
  get 'documentary_films/new'

  get '/series', to: redirect('/series/index')
  get 'series/index'
  post 'series/create'
  get 'series/new'

  get '/movies', to: redirect('/movies/index')
  get 'movies/index'
  post 'movies/create'
  get 'movies/new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "movies#index"
end
