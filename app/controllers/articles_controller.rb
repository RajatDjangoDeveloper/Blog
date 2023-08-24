class ArticlesController < ApplicationController


  def index
    @blogs = Article.all()
  end

  def show
  end

  def new
    @blog = Article.new
    # debbuger
    puts @blog
  end

  def create
    @blog = Article.new(title: params[:article][:title], description: params[:article][:description]) 
     puts "title ==> #{:title}"
     puts "description ==> #{:description}"
    if @blog.save 
      redirect_to root_path, notice: "Id no #{@blog.id} created successfully" 
    else
      render :new, notice: "Please try again"
    end
  end

  def edit
    @blog = Article.find(params[:id])
  end

  def update
    @blog = Article.find(params[:id])
    if @blog.update(title: params[:article][:title], description: params[:article][:description])
      redirect_to root_path, notice: "Id no #{@blog.id} Updated successfully" 
    else
      render :new
    end
  end

  def destroy
    @blog = Article.find(params[:id])
    if @blog.destroy
      redirect_to root_path, notice: "Id no #{@blog.id} Deleted successfully" 
    end

  end


  def allowed_params
    params.require(:Article).permit(:title, :description)
  end

end
