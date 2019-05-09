Rails.application.routes.draw do


  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'
  root 'demo#index'

  resources :subjects do
    member do
      get :delete
    end
  end


  #get 'example/index'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  #get 'example/other_hello'
 
  # get 'demo/baidu'

  #default roots, may be gone away in future
   # get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
