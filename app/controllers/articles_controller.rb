class ArticlesController < ApplicationController
  before_action :set_article, only:[:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    #code
  end

  def new
    #form in the view
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to article_path(@article)
  end

  def edit
    #form in the view
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :context)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
