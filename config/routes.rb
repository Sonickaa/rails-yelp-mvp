Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    end
  end

# is the same as->
# new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
#    restaurant_reviews POST   /restaurants/:restaurant_id/reviews(.:format)     reviews#create
# new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
