Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v2 do
      resources 'expenses'
      resources 'gains'
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end
