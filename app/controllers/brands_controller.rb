class BrandsController < ApplicationController
    get "/brands" do 
      brands = Brand.all
      brands.to_json
    end
    delete "/brands/:id" do
      brand = Brand.find(params[:id])
      brand.destory
      brand.to_json
    end
  end