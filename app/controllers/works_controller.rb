class WorksController < ApplicationControler
    
    def index
        if params[:q]
            @works = Work.where('owner LIKE ?', "%#{params[:q]}%").includes(:worker)
        else
            @works = Work.all.includes(:worker)
        end
    end

    def new
        @work = Work.new
        @workers = Worker.all
    end

    def create
        @work = Work.new(works_params)
        @work.save
        redirect_to root_path
    end

    private

    def works_params
        params.require(:work).permit(:name, :status, :initial_date, :finish_date)
    end
    
end