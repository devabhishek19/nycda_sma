class StudentsController < ApplicationController
  #to restrict anyone from using all the pafe
  before_action :authenticate_user!

  def index
  	@students = Student.all
  end

  def show
  	@student = Student.find_by_id(params[:id])
  end

  def new
  	@student = Student.new
  end

  def create
    #initialize a new student object with form values
  	@student = Student.new(student_params)
    #if student sucessfully created redirect to the index view
    #and then display a flash message
    if @student.save
      flash[:notice] = "Student was Sucsessfully added!"
  	 redirect_to student_path(@student)
    else
      flash[:alert] = "Student was not able to add!"
      render :new
    end
  end

   def edit
    @student = Student.find_by_id(params[:id])
  end

  def update
    @student = Student.find_by_id(params[:id])
    if 
      @student.update_attributes(student_params)
      flash[:notice] = "Student was Sucsessfully Edited!"
      redirect_to students_path
    else
      flash[:alert] = "Student was not able to Edit!"
      render :edit
    end 
  end

  def destroy
  	@student = Student.find_by_id(params[:id])
  	if @student.destroy
      flash[:notice] = "Student was Sucsessfully Remove!"
  	redirect_to students_path, flash = {sucsess: "Student sucsessfully added!"}
    end
  end

  private

  def student_params
  	params.require(:student).permit(:fname, :lname, :email, :phone, :status, :photo, :course_ids=>[])
  end

  


end
