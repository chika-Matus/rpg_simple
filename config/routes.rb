Rails.application.routes.draw do
  get "battle/index"
  get "battle/attack"
  get "battle/heal"
  root "battle#index"
  post "battle/attack", to: "battle#attack"
  post "battle/heal", to: "battle#heal"
end