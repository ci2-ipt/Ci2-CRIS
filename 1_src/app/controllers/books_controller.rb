class BooksController < ArticlesController
  
    def new
      @book = Book.new
    end

    def create
        @book = Book.new(book_params)
    
        if @book.save
          redirect_to @book
        else
          render :new, status: :unprocessable_entity
        
        end
      end

      def show
        @book = Book.find(params[:id])
      end
  

      def edit
        @book = Book.find(params[:id])
      end
    
      def update
        @book = Book.find(params[:id])
    
        if @book.update(article_params)
          redirect_to @book
        else
          render :edit, status:  :unprocessable_entity
      end
    end
    
      def destroy
        @book = Article.find(params[:id])
        @book.destroy
    
        redirect_to root_path, status: :see_other
      end

    public 
      def book_params
        params.require(:book).permit(:title, :abstract, :authors, :publish_date, :pages, :keywords, :url, :ids, :edition, :publisher)
      end
  end
  