class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find_by_id(params[:id])
  end

  def new
    @course  = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "course successfully added!"
      redirect_to courses_path
    else
      flash[:alert] = "Something is wrong Try again!"
      render :new
    end
  end

  def edit 
    @course = Course.find_by_id(params[:id])
  end

  def update
    @course = Course.find_by_id(params[:id])
    if @course.update_attributes(course_params)
      flash[:notice] = "User successfully Updated!"
      redirect_to courses_path
    else
      flash[:alert] = "Someting is going wrong Try one more time!"
      render :edit
    end
  end

 

  def destroy
    @course = Course.find_by_id(params[:id])
    if @course.destroy
      redirect_to courses_path, notice: 'Course successfully deleted!'
    else
    render :edit, alert: 'try one more time!'
    end
  end

  def course_params
    params.require(:course).permit(:name)
  end

end