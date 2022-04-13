class ArticlesController < ApplicationController
  get "/articles" do 
    articles = Article.all
    articles.to_json
  end
  delete "/articles/:id" do
    article = Article.find(params[:id])
    article.destory
    article.to_json
  end
end