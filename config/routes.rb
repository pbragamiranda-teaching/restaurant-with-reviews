Rails.application.routes.draw do
  resources :restaurants do
    # get '/restaurants/top', to: 'restaurants#top' as: :top_st

  #/restaurants/top
    collection do
      # get '/top', to: 'restaurants#top'
      get :top
    end

    member do
      get :chef
    end

    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [ :destroy ]
end

# 1) Criar um novo projeto rails -> rails new
# 2) Criamos um modelo e migramos (rails g model -> rails db:migrate)
# 3) Criamos nossa seeds
# 4) Geramos no controller (rails g controller)
# 5) Entramos no ritual routes -> controller -> view
# 6) Preciso de um novo model? Crio outro model (rails g model)
# 7) Esqueci um campo /
#      preciso atualizar meu model -> crio uma migration (rails g migrantion)
#      executo a migration -> rails db:migrate
