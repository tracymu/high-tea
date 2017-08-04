HighTea::Application.routes.draw do
  devise_for :admins
  resources :visits

  root 'visits#index'

  get 'top-five' => 'visits#top_five', as: :top_five

  scope '/api' do
    scope '/visits' do
      get '/' => 'api/visits#index'
    end
  end
end
