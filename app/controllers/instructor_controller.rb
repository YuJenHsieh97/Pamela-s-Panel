class InstructorController < ApplicationController
    def index
        @instructor = Instructor.all.reverse
        @new_instructor = Instructor.new
      end
    
      def show
        @instructor = Instructor.find(params[:id])
      end
      
      def create
        @temp = Instructor.create(instructor_params)
        
        if @temp.valid?
          flash[:notice] = "Course CREATED!"
        else
          flash[:notice] = "YOU TYPED TOO MUCH!"
        end
        redirect_to '/instructor'
      end
      
      def update
        @instructor = Insturctor.find(params[:id])
        @instructor.update(instructor_params)
        @instructor.save
        redirect_to '/instructor'
      end
    
      def destory
        @instructor = Instructor.find(params[:id])
        @instructor.destory
        redirect_to '/instructor'
      end
      private
    
      def instructor_params
        params.require(:instructor).permit(:fName, :lName, :age, :salary, :education)
      end 
    
      def edit
      end
end
