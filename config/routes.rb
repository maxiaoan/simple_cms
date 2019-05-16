Rails.application.routes.draw do


  root 'demo#index'
  get 'access/menu'
  get 'access/login'

  post 'access/attempt_login'
  get 'access/logout'

  # default there is no delete member
  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  resources :sections do
    member do 
      get :delete
    end
  end


  #get 'example/index'
  get 'admin', :to => 'access#menu'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/escape_output'
  #get 'example/other_hello'
 
  # get 'demo/baidu'

  #default roots, may be gone away in future
   # get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
