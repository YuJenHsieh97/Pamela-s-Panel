class StudentController < ApplicationController
    def index
        @student = Student.all.reverse
        @new_student = Student.new
      end
    
      def show
        @student = Student.find(params[:id])
        @student = Student.cohorts(Cohort.find(params[:cohort]))
      end
      
      def create
        @temp = Student.create(student_params)
        @temp.cohorts<<(Cohort.find(params[:cohort]))
        if @temp.valid?
          flash[:notice] = "Course CREATED!"
        else
          flash[:notice] = "YOU TYPED TOO MUCH!"
        end
        redirect_to '/student'
      end
      
      def update
        @student = Student.find(params[:id])
        @student.update(student_params)
        @student.save
        redirect_to '/student'
      end
    
      def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to '/student'
      end

      def edit
        @student = Student.find(params[:id])
      end
      private
    
      def student_params
        params.require(:student).permit(:fName, :lName, :age, :education)
      end 
end
