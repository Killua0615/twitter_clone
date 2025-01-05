Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :delete]
  
  # 投稿機能のルート
  resources :posts, only: [:index] # 必要に応じて他のアクションも追加

  # get "up" => "rails/health#show", as: :rails_health_check

  # PWA関連（必要な場合は残す）
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # ルートの設定
  root "posts#index"
end
