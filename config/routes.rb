Rails.application.routes.draw do
  mount MagicLamp::Genie, at: '/magic_lamp' if defined?(MagicLamp)
  root 'dashboard#index'

  namespace :api do
    namespace :v1 do
      resources :ideas, defaults: {format: :json} do
      end
    end
  end
end
