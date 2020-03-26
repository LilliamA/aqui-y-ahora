class Api::V1::ProductsController < ActionController::API
    def index
      products = Product.all
      products = products.map do |product|
        { id: product.id, name: product.name }
      end
      
      render json: { results: products }.to_json, status: :ok
    end
  end