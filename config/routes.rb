Rails.application.routes.draw do


  root to: 'static_pages#home'

  get '/', to: 'static_pages#home'
  get '/login', to: 'static_pages#login'
  get '/chris/dash', to: 'static_pages#dash'
  get '/chris/battery', to: 'static_pages#battery'

end
