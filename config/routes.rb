Rails.application.routes.draw do

  get 'expenses/mark_used', to: 'expenses#mark_used', as: 'mark_used_expense'
  resources :expenses
  resources :purchases, except: [:show, :edit, :update]
  resources :lemonade_types, except: [:show]

  root 'purchases#index'

end
