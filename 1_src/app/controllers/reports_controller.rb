class ReportsController < ArticlesController
  
    def new
      @report = Report.new
    end

    def create
        @report = Report.new(report_params)
    
        if @report.save
          redirect_to @report
        else
          render :new, status: :unprocessable_entity
        
        end
      end

      def show
        @report = Report.find(params[:id])
      end
  

      def edit
        @report = Report.find(params[:id])
      end
    
      def update
        @report = Report.find(params[:id])
    
        if @report.update(report_params)
          redirect_to @report
        else
          render :edit, status:  :unprocessable_entity
      end
    end
    
      def destroy
        @report = Report.find(params[:id])
        @report.destroy
    
        redirect_to root_path, status: :see_other
      end

    public 
      def report_params
        params.require(:report).permit(:title, :abstract, :authors, :publish_date, :pages, :keywords, :url, :ids, :journal_name)
      end
  end
  