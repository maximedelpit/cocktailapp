Rails.application.routes.draw do
  root "drinks#index"
  resources :drinks, only: [:new, :create, :index, :show] do
    resources :doses, only: :create
  end
end
