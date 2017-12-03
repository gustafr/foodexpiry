Rails.application.routes.draw do
  get 'index/index'
  root controller: :index, action: :index
end
