Rails.application.routes.draw do
  #get 'example/index'
  #get 'demo/index'
  
  root 'example#index'

  #default roots, may be gone away in future
  get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
