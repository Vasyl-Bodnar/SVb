Rails.application.routes.draw do
  root 'posts#index'
  get '/:locale' => 'posts#index'

  scope '(:locale)', locale: /en|nl/ do
    resources :posts
  end
end
