Rails.application.routes.draw do
  devise_for :admins

  resources :templates, shallow: true do
    resources :users, param: :slug
  end

  get '/:slug', to: 'users#edit', as: :slug

  root "templates#index"
end
