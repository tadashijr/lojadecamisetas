Rails.application.routes.draw do
  resources :departamentos
    resource :produtos, only: [:new, :create, :destroy, :edit, :update]
    get "/produtos/busca" => "produtos#busca", as: :busca_produto
    get "/produtos/edit/:id" => "produtos#editar", as: :editar_produtos
    delete "/produtos/:id" => "produtos#destroy", as: :produto
    root "produtos#index"
end
