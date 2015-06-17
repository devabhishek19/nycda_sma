class StudentsController < ApplicationController
  def index
  	@students = Student.all
  end

  def show
  	@student = Student.find_by_id(params[:id])
  end

  def edit
  	@student = Student.find_by_id(params[:id])
  end

  def update
  	@student = Student.find_by_id(params[:id])
  	student.update_attributes(student_params)
  end

  def new
  	@student = Student.new
  end

  def create
  	@student = Student.new(student_params)
  	@student.save
  	redirect_to students_path
  end

  def delete
  	@student = Student.find_by_id(params[:id])
  	@student.destroy
  	redirect_to students_path
  end

  def student_params
  	params.require(:student).permit(:fname, :lname, :email, :phone, :status)
  end
end
