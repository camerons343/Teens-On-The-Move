Teens::Application.routes.draw do
  root to: 'logs#index'
  devise_for :users
  resources :logs do
    collection do
      get :total
	  delete :delete_all
    end
  end
end
