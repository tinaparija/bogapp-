Rails.application.routes.draw do
	root "creatures#index" #localhost:3000

	get "/creatures", to: "creatures#index", as: "creatures"
	get "/creatures/new", to: "creatures#new", as: "new_creature"
	post "/creatures" => "creatures#create"
	get "/creatures/:id", to: "creatures#show", as: "creature"
	get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"
	patch "/creatures/:id", to: "creatures#update"
	delete "/creatures/:id", to: "creatures#destroy"
end
