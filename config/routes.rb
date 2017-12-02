Rails.application.routes.draw do
  get 'index/index'
  get "/pages/:page" => "pages#show"

  root controller: :index, action: :index
end
