class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  
  def index
    @articles = Article.all
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Der Artikel wurde erfolgreich erstellt"
      redirect_to articles_path(@article)      
    else
      render 'new'
    end
    
    def show
      @article = Article.find(params[:id])
    end
    
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :description)
  end 
end
