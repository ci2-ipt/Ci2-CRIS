class ConferenceController < ArticlesController
  
    def new
      @conference = Conference.new
    end

    def create
        @conference = Conference.new(conference_params)
    
        if @conference.save
          redirect_to @conference
        else
          render :new, status: :unprocessable_entity
        
        end
      end

      def show
        @conference = Conference.find(params[:id])
      end
  

      def edit
        @conference = Conference.find(params[:id])
      end
    
      def update
        @conference = Conference.find(params[:id])
    
        if @conference.update(article_params)
          redirect_to @conference
        else
          render :edit, status:  :unprocessable_entity
      end
    end
    
      def destroy
        @conference = Conference.find(params[:id])
        @conference.destroy
    
        redirect_to root_path, status: :see_other
      end

    public 
      def conference_params
        params.require(:conference).permit(:title, :abstract, :authors, :publish_date, :pages, :keywords, :url, :ids, :proceedings, :place)
      end
  end
  