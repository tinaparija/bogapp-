Rails.application.routes.draw do
	root "creatures#index" #localhost:3000

	get "/creatures", to: "creatures#index", as: "creatures"
	get "/creatures/new", to: "creatures#new", as: "new_creature"
	post "/creatures" => "creatures#create"
	get "/creatures/:id", to: "creatures#show", as: "creature"
end
