Rails.application.routes.draw do


  resources :users do
    resources :deeds do
  	end
  end

  
end
