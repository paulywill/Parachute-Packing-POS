Charlie::Application.routes.draw do
  resources :riggers
  resources :rigs
  resources :damages
  resources :packers
  resources :packjobs
  root :to => 'packjobs#index'
end
