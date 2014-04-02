Teens::Application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :logs do
    collection do
      get :total
	  delete :delete_all
    end
  end

  root to: 'logs#index'
end