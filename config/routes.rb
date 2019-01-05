# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "sites#index"
  mount GrapeSwaggerRails::Engine => "/docs"
  mount API::Core, at: "/"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
