class ArticlesController < ApplicationController
  http_basic_authenticate_with name: 'Mohit', password: '12345', except: [:index, :show]

  def index
    @name = 'Vinayak'
    @articles = Article.all
    
  end
  
  def show
    puts @name
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    
    valid = params[:term]
    if valid = 1
      @article = Article.new(article_params)

      respond_to do |format| 
      if @article.save
        UserMailer.with(article: @article).welcome_email.deliver_now

        format.html { redirect_to(@article, notice: 'User was successfully created.') }
        format.json { render json: @article, status: :created, location: @article }

        # redirect_to @article
      else
      #  render :new, status: :unprocessable_entity 
       format.html { render action: 'new' }
       format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end
end
  


  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end



  private
  def article_params
    params.require(:article).permit(:title, :body,:status,:term,:email, :password_confirmation)
  end

end
