Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'


  # CRUD EMPLOYEE
  resources :employees
end
