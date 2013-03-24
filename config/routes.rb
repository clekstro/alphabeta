Alphabeta::Engine.routes.draw do
  root to: "signup#new"
  post '/signups' => 'signup#create'
end
