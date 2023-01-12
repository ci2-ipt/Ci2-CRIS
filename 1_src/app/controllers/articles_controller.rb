class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    
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
      render :edit, status:  :unprocessable_entity
  end
end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end
  public 
    def article_params
      params.require(:article).permit(:title, :abstract, :authors, :publish_date, :pages, :keywords, :url, :ids)
    end
end
=begin
class ThesisController < ArticlesController
  def thesis_params

    def new
      @thesis = Thesis.new
    end

    params.require(:thesis).permit(:title, :abstract, :authors, :publish_date, :pages, :keywords, :url, :ids, :university, :thesis_type)
  end
end

class JournalsController < ArticlesController
  def journal_params

    def new
      @journal = Journal.new
    end

    params.require(:journal).permit(:title, :abstract, :authors, :publish_date, :pages, :keywords, :url, :ids, :journal_name)
  end
end

class ReportsController < ArticlesController
  def report_params

    def new
      @report = Report.new
    end

    params.require(:report).permit(:title, :abstract, :authors, :publish_date, :pages, :keywords, :url, :ids, :journal_name)
  end
end

class ConferenceController < ArticlesController
  def conference_params

    def new
      @conference = Conference.new
    end

    params.require(:conference).permit(:title, :abstract, :authors, :publish_date, :pages, :keywords, :url, :ids, :journal_name)
  end
end
=end