require 'sidekiq/web'
require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  constraints subdomain: "dev" do
    match '(*_)' => "subdomain#redirect", via: :all
  end

  mount Blog::Engine => "/ta"
  mount Dev::Engine => "/dev"
  mount OnDeck::Engine => "/frc/ondeck"

  mount Sidekiq::Web => "/sidekiq"

  match '/', to: redirect('/ta'), via: :all
end
