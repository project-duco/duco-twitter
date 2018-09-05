Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'main#landing'
  post '/tweets', to: 'main#get_25_tweets_by_user'

end
