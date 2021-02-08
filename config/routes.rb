Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "flats#index"

  # verb (get/post) "/flats", to: "controller#action"
  # get "/flats", to: "flats#index"
  get "/flats/:id", to: "flats#show", as: :flat
  # /flats/145
end
