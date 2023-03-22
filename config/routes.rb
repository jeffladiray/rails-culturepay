Rails.application.routes.draw do
  namespace :forest do
    post '/actions/update_user' => 'employees#update_user'
  end
  mount ForestLiana::Engine => '/forest'

  # CRUD EMPLOYEE
  resources :employees
end
