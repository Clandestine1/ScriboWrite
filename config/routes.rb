Rails.application.routes.draw do
  get 'profiles/show'
 
get ':user_name/edit', to: 'profiles#edit', as: :edit_profile  
  devise_for :users, :controllers => { registrations: 'registrations' }  
get ':user_name', to: 'profiles#show', as: :profile  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :posts do  
  resources :comments
end    
root 'posts#index'
end


