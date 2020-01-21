class ArticlesController < ApplicationController

  before_action :find_article , only:[:edit, :show, :destroy, :update]

  def index
    @articles = Article.all
  end

  def new 
    @article = Article.new
  end

  def create
    # the line below inspects the params
    # render plain: params[:article].inspect
    # Because of strong params we need a private permission function
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created!"
      redirect_to article_path(@article)
    else
      render 'new'
    end    
  end

  def edit

  end

  def update
    if @article.update(article_params)
      flash[:notice] = "Artcle is updated successfully!"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end


  def show

  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title,:description)
  end

  def find_article
    @article = Article.find(params[:id])
  end

end