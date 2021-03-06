Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get 'user_check', to: 'users#check'
      get 'histories_user', to: 'histories#show_user'
      resources :users, :genres, :histories
    end
  end
end
