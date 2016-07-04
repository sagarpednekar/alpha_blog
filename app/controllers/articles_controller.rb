class ArticlesController < ApplicationController
  before_action :set_params, only: [:edit, :update, :show, :destroy]
  def index
      @article = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
     @article = Article.new(article_params)
    if @article.save
       flash[:success] = "Artciles created Succesfully"
      redirect_to article_path(@article)
      else
      render 'new'
    end

    def update
      if @article.update(article_params)
        flash[:success] = "Articles updated Succesfully"
        redirect_to article_path(@article)
        else
        render 'edit'
      end
    end

    def show
    end

    def destroy
      @article.destroy
      flash[:danger] = "Articles succesfully Destroyed "
       redirect_to articles_path
    end


  end

  private
  def set_params
     @article = Article.find(params[:id])
  end


  def article_params
    params.require(:article).permit(:title, :description)
  end
end