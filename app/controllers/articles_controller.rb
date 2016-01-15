class ArticlesController < ApplicationController
  
  def new
    @article = Article.new
  end
  
  
  def create
    #render plain: params [:article].inspect
    @article = Article.new
    @article.save
    redirect_to article_show(@article)
  end
  
  def article_params
    params.require(:article).permit(:title,:description)
  end
  
  
end
