class CohortController < ApplicationController
    def index
        @cohort = Cohort.all.reverse
        @new_cohort = Cohort.new
      end
    
      def show
        @cohort = Cohort.find(params[:id])
        @cohort = Cohort.find(params[:name])
      end
      
      def create
        @temp = Cohort.create(cohort_params)
        
        if @temp.valid?
          flash[:notice] = "Course CREATED!"
        else
          flash[:notice] = "YOU TYPED TOO MUCH!"
        end
        redirect_to '/cohort'
      end
      
      def update
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        @cohort.save
        redirect_to '/cohort'
      end
    
      def destroy
        @cohort = Cohort.find(params[:id])
        @cohort.destroy
        redirect_to '/cohort'
      end

      def edit
        @cohort = Cohort.find(params[:id])
      end
      private
    
      def cohort_params
        params.require(:cohort).permit(:name, :sDate, :eDate)
      end 
end
