class ArticlesController < ApplicationController
  get "/articles" do 
    articles = Article.all
    articles.to_json(include: [:brand, :customer])
  end

  post "/articles" do 
    article = Article.create(
      brand_id: params[:brand],
      customer_id: params[:customer],
      category: params[:category],
      size: params[:size],
      color: params[:color],
      material: params[:material]
    )
    article.to_json(include: :brand)
  end
  patch "/articles/:id" do
    puts params
    article = Article.find(params[:id])
    article.update(
      brand_id: params[:brand],
      customer_id: params[:customer]
    )
  end
  delete "/articles/:id" do
    article = Article.find(params[:id])
    article.destroy
    article.to_json
  end
end