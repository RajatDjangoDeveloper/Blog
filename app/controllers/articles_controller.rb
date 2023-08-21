class ArticlesController < ApplicationController
  def index
    @blogs = Article.all()
  end
  def show
  end
  def new
    @employee = Article.new
  end
  def create
    @employee = Article.new(Title, Description) 
    if @employee.save
      redirect_to root_path
      # hiaolll
    
    end
      
  end

end
