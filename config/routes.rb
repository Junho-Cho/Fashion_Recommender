Rails.application.routes.draw do
  resources :stylejgs
  resources :markets do
    collection do
      get :search
    end
  end
  
  # get 'markets/search' => 'markets#search'
  
  post 'stylejg/:stylejg_id/rate' => 'rates#rate_toggle'
  
  devise_for :users
  root 'main#home'

  get 'main/home'

  get 'main/judge'

  get 'main/doctor'

  get 'main/market'

  get 'main/mypage_confirm'

  post 'main/mypage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
