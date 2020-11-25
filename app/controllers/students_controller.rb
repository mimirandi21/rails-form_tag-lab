class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    Student.create(student_params(student_array))
    redirect_to students_path
  end

  private

  def student_params(array_args)
    params.require(:student).permit(array_args)
  end

  def student_array
    [:first_name, :last_name]
  end

end
