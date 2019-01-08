class CourseController < ApplicationController
  def index
    @course = Course.all.reverse
    @new_course = Course.new
  end

  def show
    @course = Course.find(params[:id])
  end
  
  def create
    @temp = Course.create(course_params)
    if @temp.valid?
      flash[:notice] = "Course CREATED!"
    else
      flash[:notice] = "YOU TYPED TOO MUCH!"
    end
    redirect_to '/course'
  end
  
  def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    @course.save
    redirect_to '/course'
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to '/course'
  end

  def edit
    @course = Course.find(params[:id])
  end

  private

  def course_params
    params.require(:course).permit(:name, :hours)
  end 



end
