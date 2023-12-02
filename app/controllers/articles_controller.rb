class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_admin!, only: [:admin_index, :new, :create, :edit,:update, :destroy]

  def admin_index
    @articles = Article.all
  end

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Artículo creado exitosamente"
      redirect_to article_path(@article)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:notice] = "El Artículo fue actualizado"
      redirect_to article_path(@article)
    else
      flash[:notice] = "El Artículo no fue actualizado"
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    flash[:notice] = "Artículo eliminado"
    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :photo)
    end

    def set_article
      @article = Article.find(params[:id])
    end
end
