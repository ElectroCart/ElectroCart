Rails.application.routes.draw do
  devise_for :users
resources :homes do
  collection do
    get :contact_us
    get :about_us
    get :product_detail
    get :category
  end
end
root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
