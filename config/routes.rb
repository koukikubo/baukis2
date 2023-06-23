Rails.application.routes.draw do

  namespace :staff do
    root "top#index"
  end

  namespace :admin do
    root "top#index"
  end

  namespace :customer do
    root "top#index"
  end
  
  
>>>>>>> parent of 393b878 (Revert "Revert "ルーティングの設定"")
end
