class BrandsController < ApplicationController
    get "/brands" do 
      brands = Brand.all
      brands.to_json
    end
    post "/brands" do 
      brand = Brand.create(
        origin: params[:origin],
        name: params[:name],
      )
      brand.to_json
    end
  end