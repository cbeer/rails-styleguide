Styleguide::Engine.routes.draw do
  root :to => "styleguide#show"

  match ":id", :to => "styleguide#show"
end
